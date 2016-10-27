open import Semiring as S
open import Graph as G

module Graph.Definitions {c ℓ q e} {K : Semiring c ℓ} (G : Graph K q e) where
  open Semiring K renaming (Carrier to C)
  open Graph G
  open import Sum K
  open import Semiring.Definitions K

  open import Data.Empty using (⊥)
  open import Data.List using (List; []; _∷_)
  open import Data.List.Any using (Any; here; there; module Membership)
  open import Data.Nat as ℕ using (ℕ)
  open import Data.Product using (Σ; _×_; ∃; ∃₂; _,_)
  open import Data.Star using (Star; ε; _◅_)
  open import Data.Unit using (⊤)

  open import Level

  open import Relation.Binary using (Rel)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

  open Membership (PEq.setoid Q) using (_∈_; _∉_)

  -- Path with explicit endpoints
  E* : Rel Q _
  E* = Star E

  -- Weight of a path
  w* : ∀ {q q′} → E* q q′ → C
  w* ε = 1#
  w* (e ◅ π) = w e * w* π

  Non-trivial : ∀ {q q′} → E* q q′ → Set _
  Non-trivial ε = ⊥
  Non-trivial (_ ◅ _) = ⊤

  Cycle : Q → Set _
  Cycle q = E* q q

  -- Note: this does not include the source vertex. This allows us to talk of
  -- cycle-free cycles (cycles that don't revisit the start until the end).
  path-vertices : ∀ {q q′} → E* q q′ → List Q
  path-vertices ε = []
  path-vertices (_◅_ {q} {q′} e π) = q′ ∷ path-vertices π

  Cycle-free : ∀ {q q′} → E* q q′ → Set _
  Cycle-free {q} π = q ∉ path-vertices π

  -- Paths with only a fixed number of cycles. This fits the “at most k”
  -- reading, because we can add zero-length cycles without problem.
  P : ℕ → Rel Q _
  P ℕ.zero q q′ = Σ (E* q q′) Cycle-free
  P (ℕ.suc l) q q″ =
    ∃ λ q′ → Σ (E* q q′) Cycle-free × Σ (Cycle q′) Cycle-free × P l q′ q″

  -- Definition 8: k-closed on a graph
  record _ClosedOnG (k : ℕ) : Set (c ⊔ ℓ ⊔ q ⊔ e) where
    field
      closed : ∀ {q} (π : E* q q) → k ClosedAt (w* π)
