module Vec where
  open import Data.Vec public

  import Level as L

  data All {a p} {A : Set a} (P : A → Set p)
           : ∀ {n} → Vec A n → Set (a L.⊔ p) where
    [] : All P []
    _∷_ : ∀ {x n} {xs : Vec A n} → P x → All P xs → All P (x ∷ xs)

  function→All :
    ∀ {a p} {A : Set a} (P : A → Set p) →
    (∀ a → P a) → ∀ {n} (xs : Vec A n) → All P xs
  function→All P f [] = []
  function→All P f (x ∷ xs) = f x ∷ function→All P f xs

  foldl-preserves :
    ∀ {a b p} {A : Set a} {B : Set b} (P : B → Set p)
    {n} {xs : Vec A n} {f : B → A → B} {z : B} →
    P z → All (λ x → ∀ {a} → P a → P (f a x)) xs → P (foldl (λ _ → B) f z xs)
  foldl-preserves P pz [] = pz
  foldl-preserves P pz (px ∷ pxs) = foldl-preserves P (px pz) pxs
