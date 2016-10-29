open import Semiring as S
open import Graph as G

module Graph.Definitions {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Sum K
  open import Semiring.Definitions K

  open import Data.Empty using (⊥)
  open import Data.Fin using (Fin)
  open import Data.List using (List; []; _∷_)
  open import Data.List.Any using (Any; here; there; module Membership)
  open import Data.Nat as ℕ using (ℕ)
  open import Data.Product using (Σ; _×_; ∃; ∃₂; _,_)
  open import Data.Star using (Star; ε; _◅_; _◅◅_)
  open import Data.Unit using (⊤)

  open import Function

  open import Level

  open import Relation.Binary using (Rel; Setoid)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

  open Membership (PEq.setoid (Fin n)) using (_∈_; _∉_)

  -- A dummy type to get vertices on the type level
  record Edge (i j : Fin n) : Set Level.zero where
    constructor edge

  edge-weight : ∀ {q q′} → Edge q q′ → C
  edge-weight {q} {q′} e = G q q′

  -- Path with explicit endpoints
  Path : Rel (Fin n) _
  Path = Star Edge

  -- Weight of a path
  path-weight : ∀ {q q′} → Path q q′ → C
  path-weight ε = 1#
  path-weight (e ◅ π) = edge-weight e * path-weight π

  Non-trivial : ∀ {q q′} → Path q q′ → Set _
  Non-trivial ε = ⊥
  Non-trivial (_ ◅ _) = ⊤

  Cycle : Fin n → Set _
  Cycle q = Path q q

  -- Note: this does not include the source vertex. This allows us to talk of
  -- cycle-free cycles (cycles that don't revisit the start until the end).
  path-vertices : ∀ {q q′} → Path q q′ → List (Fin n)
  path-vertices ε = []
  path-vertices (_◅_ {q} {q′} e π) = q′ ∷ path-vertices π

  Cycle-free : ∀ {q q′} → Path q q′ → Set _
  Cycle-free {q} π = q ∉ path-vertices π

  -- Paths with only a fixed number of cycles. This fits the “at most k”
  -- reading, because we can add zero-length cycles without problem.
  Path-with-l-cycles : ℕ → Rel (Fin n) _
  Path-with-l-cycles ℕ.zero q q′ = Σ (Path q q′) Cycle-free
  Path-with-l-cycles (ℕ.suc l) q q″ =
    ∃ λ q′ → Σ (Path q q′) Cycle-free
           × Σ (Cycle q′) Cycle-free
           × Path-with-l-cycles l q′ q″

  Path-with-l-cycles→Path : ∀ {l q q′} → Path-with-l-cycles l q q′ → Path q q′
  Path-with-l-cycles→Path {ℕ.zero} (π , _) = π
  Path-with-l-cycles→Path {ℕ.suc l} (_ , (π , _) , (c , _) , p) =
    π ◅◅ c ◅◅ Path-with-l-cycles→Path {l} p

  -- Ignore the Cycle-free proofs for the sake of path equality
  P-setoid : ℕ → Fin n → Fin n → Setoid _ _
  P-setoid l q q′ = record
    { Carrier = Path-with-l-cycles l q q′
    ; _≈_ = _≡_ on Path-with-l-cycles→Path {l} {q} {q′}
    ; isEquivalence = record { refl = PEq.refl
                             ; sym = PEq.sym
                             ; trans = PEq.trans
                             }
    }

  -- Definition 8: k-closed on a graph
  record _ClosedOnG (k : ℕ) : Set (c ⊔ ℓ) where
    field
      closed : ∀ {q} (π : Cycle q) → k ClosedAt (path-weight π)
