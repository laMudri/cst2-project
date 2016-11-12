open import Semiring as S
open import Graph as G

module Graph.Properties {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G
  open import Sum K

  open import Finite

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as Fin using (Fin)
  open import Data.Fin.Properties as FinP hiding (setoid)
  open import Data.List as List using (List)
  open import Data.List.Any
    using (here; there; module Membership; module Membership-≡)
  open Membership-≡
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (Σ-syntax; ∃; _×_; _,_)
  open import Star as Star
    using (Star; ε; _◅_; _◅◅_; _⊏_; ¬⊏ε; ⊏x◅ε⇒≡ε; Non-trivial;
           distinct-endpoints→non-trivial)
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)

  open import Level

  open import Relation.Binary using (Rel)
  open import Relation.Binary.HeterogeneousEquality as HEq using (_≅_; _≇_)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_; _≢_)
  import Relation.Binary.EqReasoning as EqR
  import Relation.Binary.PartialOrderReasoning as POR
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  target-∈-path-vertices :
    ∀ {q q′ q″} (e : Edge q q′) (π : Path q′ q″) → q″ ∈ path-vertices (e ◅ π)
  target-∈-path-vertices e ε = here PEq.refl
  target-∈-path-vertices e (f ◅ π) = there (target-∈-path-vertices f π)

  ε-cycle-free : ∀ {q} → Cycle-free {q} ε
  ε-cycle-free {q}  π ¬t sub eq = ¬⊏ε π sub

  singleton-cycle-free :
    ∀ {q q′} → (e : Edge q q′) → Cycle-free (e ◅ ε)
  singleton-cycle-free e π nt sub eq with ⊏x◅ε⇒≡ε sub
  singleton-cycle-free e .ε nt sub eq | PEq.refl , PEq.refl = nt

  P-finite : ∀ l q q′ → Finite (P-setoid l q q′)
  P-finite zero q q′ with q FinP.≟ q′
  P-finite ℕ.zero q .q | yes PEq.refl = 1 , record
    { to = record { _⟨$⟩_ = λ _ → Fin.zero ; cong = PEq.cong _ }
    ; from = record
      { _⟨$⟩_ = λ _ → ε , ε-cycle-free
      ; cong = PEq.cong _
      }
    ; inverse-of = record
      { left-inverse-of = λ
        { (ε , noc) → PEq.refl
        ; (e ◅ π , noc) → {!noc!}
        }
      ; right-inverse-of = λ { Fin.zero → PEq.refl ; (Fin.suc ()) }
      }
    }
  ... | no neq = {!!} , record
    { to = record { _⟨$⟩_ = {!!} ; cong = {!!} }
    ; from = record
      { _⟨$⟩_ = λ _ → (edge ◅ ε) , singleton-cycle-free edge
      ; cong = PEq.cong _
      }
    ; inverse-of = record
      { left-inverse-of = λ { (π , noc) → {!!} }
      ; right-inverse-of = λ { x → {!!} }
      }
    }
    where
    open Membership (PEq.setoid (Fin 1))
  P-finite (suc l) q q′ = {!!}
