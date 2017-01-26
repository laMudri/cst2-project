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
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product as Prod using (∃; ∃₂; _×_; _,_; proj₁; proj₂)
  open import Star
    using (Starˡ; ε; _◅_; _◅◅_; Non-trivial; _⊑_; subpath; _⊏_; Prefix; prefix)
  open import Star.Properties using (⊑ε⇒≡ε; ¬◅⊑ε; Prefix?)

  open import Function
  open import Function.Inverse as I using (Inverse; _↔_)

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; →-to-⟶)
  open import Relation.Nullary using (¬_; Dec; yes; no)

  Cycle_occurs_times-in_ : ∀ {p n q} → Cycle q → ℕ → Path p n → Set
  Cycle c occurs n times-in π = c ⊑ π ↔ Fin n

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
  cycle-occurrences {p} {q} {.q} c neq π | yes PEq.refl with Prefix? {!!} c π
  cycle-occurrences {p} {q} {.q} c neq π | yes PEq.refl | yes pre = {!!}
  cycle-occurrences {p} {q} {.q} c neq π | yes PEq.refl | no ¬pre = {!!}
  cycle-occurrences {.p} {p} {q} c neq ε | no ¬qn = {!!}
  cycle-occurrences {p} {n} {q} c neq (x ◅ π) | no ¬qn = {!cycle-occurrences c neq π!}
