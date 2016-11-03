open import Semiring as S
open import Graph as G

module Graph.Properties {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Graph.Definitions {K = K} G

  open import Finite

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as Fin using (Fin)
  open import Data.Fin.Properties as FinP
  open import Data.List as List using (List)
  open import Data.List.Any using (here; there; module Membership; module Membership-≡)
  open Membership-≡
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (Σ-syntax; ∃; _,_)
  open import Data.Star as Star using (Star; ε; _◅_)

  open import Level

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)
  open import Relation.Nullary using (Dec; yes; no)

  target-∈-path-vertices :
    ∀ {q q′ q″} (e : Edge q q′) (π : Path q′ q″) → q″ ∈ path-vertices (e ◅ π)
  target-∈-path-vertices e ε = here PEq.refl
  target-∈-path-vertices e (f ◅ π) = there (target-∈-path-vertices f π)

  P-finite : ∀ l q q′ → Finite (P-setoid l q q′)
  P-finite zero q q′ with q FinP.≟ q′
  P-finite ℕ.zero q .q | yes PEq.refl = 1 , record
    { to = record { _⟨$⟩_ = λ _ → Fin.zero ; cong = PEq.cong _ }
    ; from = record { _⟨$⟩_ = λ _ → ε , (λ ()) ; cong = PEq.cong _ }
    ; inverse-of = record
      { left-inverse-of = λ
        { (ε , ∉) → PEq.refl
        ; (e ◅ π , ∉) → ⊥-elim (∉ (target-∈-path-vertices e π)) }
      ; right-inverse-of = λ { Fin.zero → PEq.refl ; (Fin.suc ()) }
      }
    }
  ... | no neq = 1 , record
    { to = record { _⟨$⟩_ = λ _ → Fin.zero ; cong = PEq.cong _ }
    ; from = record
      { _⟨$⟩_ = λ _ → (edge ◅ ε) , (λ { (here eq) → neq eq ; (there ()) })
      ; cong = PEq.cong _
      }
    ; inverse-of = record
      { left-inverse-of = λ { (π , ∉) → {!π!} }
      ; right-inverse-of = λ { Fin.zero → PEq.refl ; (Fin.suc ()) }
      }
    }
    where
    open Membership (PEq.setoid (Fin 1))
  P-finite (suc l) q q′ = {!!}
