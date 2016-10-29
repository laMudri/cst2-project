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
  open import Data.List.Any using (here; there; module Membership)
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (∃; _,_)
  open import Data.Star as Star using (Star; ε; _◅_)

  open import Level

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)
  open import Relation.Nullary using (Dec; yes; no)

  P-finite : ∀ l q q′ → Finite (P-setoid l q q′)
  P-finite zero q q′ with q FinP.≟ q′
  ... | yes eq = 0 , record
    { to = record { _⟨$⟩_ = λ x → {!!} ; cong = {!!} }
    ; from = {!!}
    ; inverse-of = {!!}
    }
  ... | no neq = 1 , record
    { to = record
      { _⟨$⟩_ = λ _ → Fin.zero
      ; cong = PEq.cong _
      }
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
