open import Semiring as S
open import Graph as G

module Graph.Cycle {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Sum K
  open import Semiring.Definitions K
  open import Graph.Definitions {K = K} G

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as F using (Fin)
  open import Data.Fin.Properties as FP using (_≟_)
  open import Data.Nat as ℕ using (ℕ; zero; suc; _≤_)
  open import Data.Product as Prod using (∃; ∃₂; _×_; _,_; proj₁; proj₂)
  open import Star
    using ( Starˡ; ε; _◅_; _◅◅_; Non-trivial; _⊑_; subpath; _⊏_; Prefix; prefix
          ; ◅-injective′)
  open import Star.Properties using (⊑ε⇒≡ε; ¬◅⊑ε; Prefix?; ◅-⊑)

  open import Function
  open import Function.Equality using (_⟨$⟩_; cong)
  open import Function.Inverse as I using (Inverse; _↔_)

  open import Level as L using ()

  open import Relation.Binary using (Setoid)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; →-to-⟶; module ≡-Reasoning)
  open import Relation.Nullary using (¬_; Dec; yes; no)
  open import Relation.Nullary.Sigma using (Σ-dec)

  Cycle_occurs_times-in_ : ∀ {p n q} → Cycle q → ℕ → Path p n → Set
  Cycle c occurs n times-in π = c ⊑ π ↔ Fin n

  record Most-occurring-cycle {p n q} (c : Cycle q) (π : Path p n) : Set where
    field
      m : ℕ
      occurs : Cycle c occurs m times-in π
      most : ∀ {q′} (c′ : Cycle q′) →
             ∃ λ m′ → m′ ≤ m × Cycle c′ occurs m′ times-in π

  postulate P : ℕ → Fin n → Setoid L.zero L.zero
  --P k q = {!!}

  {-
  cycle-occurrences : ∀ {p n q} (c : Cycle q) → c ≢ ε → (π : Path p n) →
                      ∃ λ n → Cycle c occurs n times-in π
  {-
  cycle-occurrences ε neq ε = ⊥-elim (neq PEq.refl)
  cycle-occurrences (e ◅ c) _ ε = 0 , record
    { to = →-to-⟶ (⊥-elim ∘ ¬◅⊑ε)
    ; from = →-to-⟶ (λ ())
    ; inverse-of = record
      { left-inverse-of = ⊥-elim ∘ ¬◅⊑ε
      ; right-inverse-of = λ ()
      }
    }
  cycle-occurrences c neq (e ◅ π) with Prefix? c  = {!c!}
  -}
  cycle-occurrences {p} {n} {q} c neq π with q ≟ n
  cycle-occurrences {p} {q} {.q} c neq π | yes PEq.refl
    with Prefix? dec c π
    where
    dec : ∀ {j k k′} (x : Edge k j) (y : Edge k′ j) →
          Dec (∃ λ (keq : k ≡ k′) → PEq.subst (λ x → Edge x j) keq x ≡ y)
    dec {j} {k} {k′} edge edge =
      Σ-dec (k ≟ k′) PEq.proof-irrelevance (λ { PEq.refl → yes PEq.refl })
  cycle-occurrences {p} {n₁} {.n₁} ε neq .rs
    | yes PEq.refl | (yes (prefix rs PEq.refl)) = ⊥-elim (neq PEq.refl)
  cycle-occurrences {p} {n} {.n} (e ◅ c) neq .(e ◅ c ◅◅ rs)
    | yes PEq.refl | (yes (prefix rs PEq.refl))
    with cycle-occurrences (e ◅ c) neq (c ◅◅ rs)
  ... | (m , co) = suc m , record
    { to = →-to-⟶ (to′ e c rs (_⟨$⟩_ to))
    ; from = →-to-⟶ (λ { Fin.zero → subpath ε rs PEq.refl
                       ; (Fin.suc x) → ◅-⊑ e (from ⟨$⟩ x)
                       })
    ; inverse-of = record
      { left-inverse-of = λ { x → {!!} }
      ; right-inverse-of = λ { Fin.zero → PEq.refl
                             ; (Fin.suc x) → begin
                               to′ e c rs (_⟨$⟩_ to) (◅-⊑ edge (from ⟨$⟩ x))
                                 ≡⟨ {!!} ⟩
                               Fin.suc (to ⟨$⟩ (from ⟨$⟩ x))
                                 ≡⟨ PEq.cong Fin.suc (right-inverse-of x) ⟩
                               Fin.suc x
                                 ∎
                             }
      }
    }
    where
    open Inverse co
    open ≡-Reasoning
    to′ : ∀ {p q q′} (e : Edge q′ q) (c : Path q q′) (rs : Path p q) →
          (e ◅ c ⊑ c ◅◅ rs → Fin m) → (e ◅ c ⊑ e ◅ c ◅◅ rs → Fin (suc m))
    to′ e c rs₁ to (subpath ε rs₂ eq) = Fin.zero
    to′ e c rs₁ to (subpath (x ◅ ls) rs₂ eq) with ◅-injective′ eq
    to′ e c rs₁ to (subpath (x ◅ ls) rs₂ eq) | PEq.refl , PEq.refl , eq′ =
      Fin.suc (to (subpath ls rs₂ eq′))
  cycle-occurrences {p} {q} {.q} c neq π | yes PEq.refl | no ¬pre = {!!}
  cycle-occurrences {.p} {p} {q} c neq ε | no ¬qn = {!!}
  cycle-occurrences {p} {n} {q} c neq (x ◅ π) | no ¬qn = {!cycle-occurrences c neq π!}
  -}
