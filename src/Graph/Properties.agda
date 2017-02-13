open import Semiring as S
open import Graph as G

module Graph.Properties {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G
  open import Sum K

  open import Finite

  open import Function

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as Fin using (Fin)
  open import Data.Fin.Properties as FinP hiding (setoid)
  open import Data.List as List using (List; []; _∷_)
  open import Data.List.Any
    using (here; there; any; module Membership; module Membership-≡)
  open Membership-≡
  open import Data.Nat as ℕ using (ℕ; zero; suc; _≤′_; ≤′-refl; ≤′-step)
  open import Data.Product using (Σ-syntax; ∃; _×_; _,_; proj₁; proj₂; <_,_>)
  open import Star as Star
    using (Star; ε; _◅_; _◅◅_; _⊑_; subpath; _⊏_; strict-subpath; Non-trivial;
           distinct-endpoints→non-trivial; ◅-injective′; statesₗ; statesᵣ;
           states)
  open import Star.Properties
    using (⊑-poset; ⊑ε⇒≡ε; ◅-⊑; ¬⊏ε; ⊏x◅ε⇒≡ε)
  open import Data.Star.Properties using (◅◅-assoc)
  open import Data.Sum using (_⊎_; inj₁; inj₂; [_,_])
  open import Data.Unit using (⊤; tt)

  open import Level

  open import Relation.Binary using (Rel; Poset)
  open import Relation.Binary.HeterogeneousEquality as HEq using (_≅_; _≇_)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect)
  import Relation.Binary.EqReasoning as EqR
  import Relation.Binary.PartialOrderReasoning as POR
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  --target-∈-path-vertices :
  --  ∀ {q q′ q″} (e : Edge q′ q″) (π : Path q q′) → q″ ∈ path-vertices (e ◅ π)
  --target-∈-path-vertices e ε = here PEq.refl
  --target-∈-path-vertices e (f ◅ π) = there (target-∈-path-vertices f π)

  module Path where
    infix 4 _≡?_
    _≡?_ : ∀ {q q′} (π ρ : Path q q′) → Dec (π ≡ ρ)
    ε ≡? ε = yes PEq.refl
    ε ≡? x ◅ ρ = no (λ ())
    x ◅ π ≡? ε = no (λ ())
    _◅_ {j = q} edge π ≡? _◅_ {j = q′} edge ρ with q ≟ q′
    edge ◅ π ≡? edge ◅ ρ | yes PEq.refl with π ≡? ρ
    edge ◅ π ≡? edge ◅ .π | yes PEq.refl | yes PEq.refl = yes PEq.refl
    edge ◅ π ≡? edge ◅ ρ | yes PEq.refl | no neq = no (prf π ρ neq)
      where
      prf :
        ∀ {q q′ q″} {e : Edge q′ q″} (π ρ : Path q q′) → π ≢ ρ → e ◅ π ≢ e ◅ ρ
      prf π ρ neq eq with ◅-injective′ eq
      prf π ρ neq eq | PEq.refl , _ , eq′ = neq eq′
    edge ◅ π ≡? edge ◅ ρ | no ¬p = no (¬p ∘ proj₁ ∘ ◅-injective′)

  ε-cycle-free : ∀ {q} → Cycle-free {q} ε
  ε-cycle-free {q}  π ¬t sub eq = ¬⊏ε π sub

  singleton-cycle-free :
    ∀ {q q′} → (e : Edge q q′) → Cycle-free (e ◅ ε)
  singleton-cycle-free e π nt sub eq with ⊏x◅ε⇒≡ε sub
  singleton-cycle-free e .ε nt sub eq | PEq.refl , PEq.refl = nt

  {-
  ¬-has-cycle-ε : ∀ {s} → ¬ Has-cycle {s} ε
  ¬-has-cycle-ε (has-cycle ε nt sub) = nt
  ¬-has-cycle-ε (has-cycle (e ◅ c) nt sub) with ⊑ε⇒≡ε sub
  ... | PEq.refl , PEq.refl , ()

  q∈statesᵣ⇒Cycle-free⇒⊥ :
    ∀ {s q q′} {e : Edge q q′} {π : Path s q} →
    q′ ∈ statesₗ π → Cycle-free (e ◅ π) → ⊥
  q∈statesᵣ⇒Cycle-free⇒⊥ = {!!}
    where
    go : ∀ {s q q′ t} (ρ : Path q′ t) (e : Edge q q′) (π : Path s q) →
         q′ ∈ statesₗ π → Cycle-free (ρ ◅◅ e ◅ π) → ⊥
    go ρ e ε () cf
    go ρ e (f ◅ π) (here PEq.refl) cf =
      cf (e ◅ ε) tt (strict-subpath ρ (f ◅ π) PEq.refl (inj₂ tt)) PEq.refl
    go ρ e (f ◅ π) (there elem) cf = {!go (ρ ◅◅ e ◅ ε) f π elem!}

  q∈statesᵣ⇒Has-cycle :
    ∀ {s q} {π : Path s q} → q ∈ statesᵣ π → Has-cycle π
  q∈statesᵣ⇒Has-cycle = go ε _
    where
    go : ∀ {s q q′} (ρ : Path q q′) (π : Path s q) →
         q′ ∈ statesᵣ π → Has-cycle (ρ ◅◅ π)
    go ρ ε ()
    go ρ (e ◅ π) (here PEq.refl) =
      has-cycle (ρ ◅◅ e ◅ ε) (nt ρ e) (subpath ε π (◅◅-assoc ρ (e ◅ ε) π))
      where
      nt : ∀ {i j k} (ρ : Path j k) (e : Edge i j) → Non-trivial (ρ ◅◅ e ◅ ε)
      nt ε e = tt
      nt (x ◅ ρ) e = tt
    go ρ (e ◅ π) (there elem) =
      PEq.subst Has-cycle (◅◅-assoc ρ (e ◅ ε) π) (go (ρ ◅◅ e ◅ ε) π elem)

  has-cycle? : ∀ {s q} (π : Path s q) → Dec (Has-cycle π)
  has-cycle? = {!!}
    where
    open Poset ⊑-poset
    go : ∀ {s q} (π : Path s q) (qs : List (Fin n)) →
         Dec (Has-cycle π ⊎ (∃ λ q′ → q′ ∈ statesᵣ π × q′ ∈ qs))
    go {s} {.s} ε qs = no [ ¬-has-cycle-ε , (λ { (_ , () , _) }) ]
    go {s} {q} (e ◅ π) qs with any (q ≟_) (statesᵣ π)
    go {s} {q} (e ◅ π) qs | yes p =
      yes (inj₁ (q∈statesᵣ⇒Has-cycle {π = e ◅ π} (there p)))
    go {s} {q} (e ◅ π) qs | no ¬p with go π (q ∷ qs)
    go {s} {q} (e ◅ π) qs | no ¬p | yes (inj₁ x) = {!statesᵣ π!}
    go {s} {q} (e ◅ π) qs | no ¬p | yes (inj₂ y) = {!!}
    go {s} {q} (e ◅ π) qs | no ¬elem | no ¬rec = no {!!}

  ◅-Has-cycle : ∀ {s m q} {e : Edge m q} {π : Path s m} →
                 Has-cycle π → Has-cycle (e ◅ π)
  ◅-Has-cycle {e = e} (has-cycle c nt sub) = has-cycle c nt (◅-⊑ e sub)

  long-path-has-cycle :
    ∀ {s q} (π : Path s q) → n ≤′ path-length π → Has-cycle π
  long-path-has-cycle π le with path-length π | inspect path-length π
  long-path-has-cycle π ≤′-refl | .n | PEq.[ eq ] = {!states π!}
  long-path-has-cycle ε (≤′-step le) | ℕ.suc l | PEq.[ () ]
  long-path-has-cycle (e ◅ π) (≤′-step le) | ℕ.suc ._ | PEq.[ PEq.refl ] =
    ◅-Has-cycle (long-path-has-cycle π le)
  -}

  {-
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
  -}
