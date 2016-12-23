open import Relation.Binary using (Rel)

module Star.TransitionMembership {i t} {I : Set i} {T : Rel I t} where
  open import Star hiding (map)

  open import Level

  -- There is a transition in the chain satisfying P
  data Any {p} (P : ∀ {j k} → T j k → Set p)
            : ∀ {j k} → Star T j k → Set (i ⊔ t ⊔ p) where
    here : ∀ {j k l} {x : T j k} {xs : Star T k l} → P x → Any P (x ◅ xs)
    there : ∀ {j k l} {x : T j k} {xs : Star T k l} →
            Any P xs → Any P (x ◅ xs)

  map :
    ∀ {p q} {P : ∀ {j k} → T j k → Set p} {Q : ∀ {j k} → T j k → Set q} →
    (∀ {j k} {x : T j k} → P x → Q x) →
    ∀ {j k} {xs : Star T j k} → Any P xs → Any Q xs
  map f (here p) = here (f p)
  map f (there x) = there (map f x)
