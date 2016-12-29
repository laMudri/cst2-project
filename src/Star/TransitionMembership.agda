open import Relation.Binary using (Rel)

module Star.TransitionMembership {i t} {I : Set i} {T : Rel I t} where
  open import Star hiding (map)

  open import Data.Product using (∃; ∃₂; Σ-syntax; _×_; _,_)

  open import Level

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

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

  infix 4 [_,_]_∈_
  [_,_]_∈_ : ∀ {j k} j′ k′ → (x : T j′ k′) (xs : Star T j k) → Set _
  [_,_]_∈_ j′ k′ x = Any (λ {j} {k} x′ → ∃₂ λ (je : j′ ≡ j) (ke : k′ ≡ k) → PEq.subst₂ T je ke x ≡ x′)

  find : ∀ {p} {P : ∀ {j k} → T j k → Set p} {j k} {xs : Star T j k} →
         Any P xs → ∃₂ λ j′ k′ → ∃ λ x → [ j′ , k′ ] x ∈ xs × P x
  find {j = j} {k = k} {xs = x ◅ xs} (here px) =
    j , _ , x , (here (PEq.refl , PEq.refl , PEq.refl)) , px
  find (there any) with find any
  ... | j′ , k′ , x , elem , px = j′ , k′ , x , there elem , px
