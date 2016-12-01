open import Semiring as S
open import Graph as G

module Graph.Definitions {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Sum K
  open import Semiring.Definitions K

  open import Category.Monad using (module RawMonad)

  open import Coinduction

  open import Data.Colist as Colist using (Colist; []; _∷_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin)
  open import Data.Fin.Properties using (_≟_)
  open import Data.List as List using (List; []; _∷_)
  open import Data.List.Any using (Any; here; there; module Membership)
  open import Data.List.NonEmpty as List⁺ using (List⁺; _∷_)
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (Σ; _×_; ∃; ∃₂; _,_; proj₁; proj₂)
  open import Star using (Star; ε; _◅_; _◅◅_; Non-trivial; _⊑_; _⊏_)
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤)
  open import Data.Vec as Vec using (Vec)

  open import Function

  open import Level

  open import Relation.Binary using (Rel; Setoid)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_]; subst)
  open import Relation.Nullary using (Dec; yes; no)

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

  Cycle : Fin n → Set _
  Cycle q = Path q q

  -- Note: this does not include the source vertex. This makes the length of
  -- this list equal to the length of the path.
  -- I don't know whether I'll still need this.
  path-vertices : ∀ {q q′} → Path q q′ → List (Fin n)
  path-vertices ε = []
  path-vertices (_◅_ {q} {q′} e π) = q′ ∷ path-vertices π

  -- A path is cycle-free if no non-trivial proper subpath is a cycle.
  -- A cycle-free cycle is possible (if only the non-proper subpath is a cycle),
  -- and non-cycle-free cycles are also possible.
  Cycle-free : ∀ {q q′} → Path q q′ → Set _
  Cycle-free ρ =
    ∀ {ql qr} (π : Path ql qr) (nt : Non-trivial π)
              (sub : π ⊏ ρ) (eq : ql ≡ qr) → ⊥

  -- Paths with only a fixed number of cycles. This fits the “at most k”
  -- reading, because we can add zero-length cycles without problem.
  Path-with-l-cycles : ℕ → Rel (Fin n) _
  Path-with-l-cycles zero q q′ = Σ (Path q q′) Cycle-free
  Path-with-l-cycles (suc l) q q″ =
    ∃ λ q′ → Σ (Path q q′) Cycle-free
           × Σ (Cycle q′) Cycle-free
           × Path-with-l-cycles l q′ q″

  Path-with-l-cycles→Path : ∀ {l q q′} → Path-with-l-cycles l q q′ → Path q q′
  Path-with-l-cycles→Path {zero} (π , _) = π
  Path-with-l-cycles→Path {suc l} (_ , (π , _) , (c , _) , p) =
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

  Path-from : Fin n → Set _
  Path-from q = ∃ (Path q)

  Path-to : Fin n → Set _
  Path-to q′ = ∃ λ q → Path q q′

  _▻_ :
    ∀ {q q″ : Fin n} (πf : Path-from q) → Edge (proj₁ πf) q″ → Path-from q
  _▻_ {q″ = q″} (q′ , π) e = q″ , π ◅◅ e ◅ ε

  path-length : ∀ {q q′} → Path q q′ → ℕ
  path-length ε = ℕ.zero
  path-length (x ◅ π) = ℕ.suc (path-length π)

  vertex→n≢0 : Fin n → n ≢ 0
  vertex→n≢0 q eq with subst Fin eq q
  ... | ()

  ≢0→suc : ∀ m → m ≢ ℕ.zero → ∃ λ m-1 → m ≡ ℕ.suc m-1
  ≢0→suc ℕ.zero neq = ⊥-elim (neq PEq.refl)
  ≢0→suc (ℕ.suc m-1) neq = m-1 , PEq.refl

  vertex→n-is-suc : Fin n → ∃ λ n-1 → n ≡ ℕ.suc n-1
  vertex→n-is-suc = ≢0→suc n ∘′ vertex→n≢0

  all-paths-of-length-from : ∀ (l : ℕ) q → List⁺ (Path-from q)
  all-paths-of-length-from ℕ.zero q = return (q , ε)
    where open RawMonad List⁺.monad
  all-paths-of-length-from (suc l) q =
    all-vertices >>= λ q′ →
    all-paths-of-length-from l q′ >>= λ { (q″ , π) →
    return (q″ , edge {q} {q′} ◅ π)
    }
    where
    open RawMonad List⁺.monad

    n-is-suc : ∃ λ n-1 → n ≡ ℕ.suc n-1
    n-is-suc = vertex→n-is-suc q

    n-1 : ℕ
    n-1 = proj₁ n-is-suc

    all-vertices : List⁺ (Fin n)
    all-vertices =
      subst (λ m → List⁺ (Fin m)) (PEq.sym (proj₂ n-is-suc)) $
            List⁺.fromVec (Vec.tabulate {ℕ.suc n-1} id)

  all-paths-of-suc-length-from-to : ∀ (l : ℕ) q q′ → List⁺ (Path q q′)
  all-paths-of-suc-length-from-to ℕ.zero q q′ = return (edge ◅ ε)
    where open RawMonad List⁺.monad
  all-paths-of-suc-length-from-to (ℕ.suc l) q q″ =
    all-vertices >>= λ q′ →
    all-paths-of-suc-length-from-to l q′ q″ >>= λ π →
    return (edge ◅ π)
    where
    open RawMonad List⁺.monad

    n-is-suc : ∃ λ n-1 → n ≡ ℕ.suc n-1
    n-is-suc = vertex→n-is-suc q

    n-1 : ℕ
    n-1 = proj₁ n-is-suc

    all-vertices : List⁺ (Fin n)
    all-vertices =
      subst (λ m → List⁺ (Fin m)) (PEq.sym (proj₂ n-is-suc)) $
            List⁺.fromVec (Vec.tabulate {ℕ.suc n-1} id)

  all-paths-from : (q : Fin n) → Colist (Path-from q)
  all-paths-from q =
    Colist.concat (Colist.map (λ l → all-paths-of-length-from l q)
                              (all-ℕs-from ℕ.zero))
    where
    all-ℕs-from : ℕ → Colist ℕ
    all-ℕs-from i = i ∷ ♯ all-ℕs-from (ℕ.suc i)

  all-non-ε-paths-from-to : ∀ q q′ → Colist (Path q q′)
  all-non-ε-paths-from-to q q′ =
    Colist.concat (Colist.map (λ l → all-paths-of-suc-length-from-to l q q′)
                              (all-ℕs-from 0))
    where
    all-ℕs-from : ℕ → Colist ℕ
    all-ℕs-from i = i ∷ ♯ all-ℕs-from (ℕ.suc i)

  all-paths-from-to : ∀ q q′ → Colist (Path q q′)
  all-paths-from-to q q′ with q ≟ q′
  all-paths-from-to q .q | yes PEq.refl = ε ∷ ♯ all-non-ε-paths-from-to q q
  all-paths-from-to q q′ | no ¬p = all-non-ε-paths-from-to q q′

  shortest-distance : ∀ q q′ → C → Set _
  shortest-distance q q′ = ∑∞ (Colist.map path-weight (all-paths-from-to q q′))

  -- Definition 8: k-closed on a graph
  record _ClosedOnG (k : ℕ) : Set (c ⊔ ℓ) where
    field
      closed : ∀ {q} (π : Cycle q) → k ClosedAt (path-weight π)
