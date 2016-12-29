open import Relation.Binary using (Rel)

module Star.StateMembership {i t} {I : Set i} {T : Rel I t} where
  open import Star

  open import Level

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

  data Any {p} (P : I → Set p) : ∀ {j k} → Star T j k → Set (i ⊔ t ⊔ p) where
    here : ∀ {j k} {xs : Star T j k} → P j → Any P xs
    there : ∀ {j k l} (x : T j k) {xs : Star T k l} → Any P xs → Any P (x ◅ xs)

  _∈_ : ∀ {j k} → I → Star T j k → Set _
  i ∈ xs = Any (_≡_ i) xs
