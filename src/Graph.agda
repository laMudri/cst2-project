open import Semiring as S

module Graph {c ℓ} (K : Semiring c ℓ) where
  open Semiring K renaming (Carrier to C)

  open import Listing

  open import Data.Product using (Σ-syntax; _×_)

  open import Level

  open import Relation.Binary using (Rel)

  record Graph q e : Set (suc q ⊔ suc e ⊔ c) where
    field
      Q : Set q
      E : Rel Q e
      w : ∀ {q q′} → E q q′ → C

  record IsFiniteGraph {q} {e} (Q : Set q) (E : Rel Q e)
                       (w : ∀ {q q′} → E q q′ → C)
                       : Set (q ⊔ e ⊔ c) where
    field
      qs : Listing Q
      es : ∀ q q′ → Listing (E q q′)

  record FiniteGraph q e : Set (suc q ⊔ suc e ⊔ c) where
    field
      Q : Set q
      E : Rel Q e
      w : ∀ {q q′} → E q q′ → C
      isFiniteGraph : IsFiniteGraph Q E w

    open IsFiniteGraph isFiniteGraph public

    graph : Graph q e
    graph = record { Q = Q ; E = E ; w = w }
