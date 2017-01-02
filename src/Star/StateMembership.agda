open import Relation.Binary using (Rel)

module Star.StateMembership {i t} {I : Set i} {T : Rel I t} where
  open import Star

  open import Data.Product using (∃; ∃₂; _×_; _,_; proj₁; proj₂)

  open import Level

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

  data Any {p} (P : I → Set p) : ∀ {j k} → Star T j k → Set (i ⊔ t ⊔ p) where
    here : ∀ {j k} {xs : Star T j k} (pj : P j) → Any P xs
    there :
      ∀ {j k l} (x : T j k) {xs : Star T k l} (pxs : Any P xs) → Any P (x ◅ xs)

  _∈_ : ∀ {j k} → I → Star T j k → Set _
  i ∈ xs = Any (_≡_ i) xs

  find : ∀ {p} {P : I → Set p} {j k} {xs : Star T j k} →
         Any P xs → ∃ λ l → l ∈ xs × P l
  find (here {j} pj) = j , here PEq.refl , pj
  find (there x pxs) with find pxs
  ... | l , l∈xs , pl = l , there x l∈xs , pl
