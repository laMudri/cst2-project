module Star where
  open import Data.Star public

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Nat using (ℕ; zero; suc)
  open import Data.Product using (Σ-syntax; _×_; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)

  open import Function

  import Level as L

  open import Relation.Binary using (Rel; Preorder)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_; _≢_)
  open import Relation.Nullary using (¬_)

  module _ {i t} {I : Set i} {T : Rel I t} where

    length : ∀ {j k} → Star T j k → ℕ
    length = fold (λ _ _ → ℕ) (λ _ → suc) zero

    ◅-injective :
      ∀ {i₁ i₂ i₃ j₁ j₂ j₃} {x : T i₁ i₂} {y : T j₁ j₂}
      {xs : Star T i₂ i₃} {ys : Star T j₂ j₃}
      (eq₁ : i₁ ≡ j₁) (eq₃ : i₃ ≡ j₃) →
      PEq.subst₂ (Star T) eq₁ eq₃ (x ◅ xs) ≡ y ◅ ys →
      Σ[ eq₂ ∈ i₂ ≡ j₂ ] PEq.subst₂ T eq₁ eq₂ x ≡ y
                       × PEq.subst₂ (Star T) eq₂ eq₃ xs ≡ ys
    ◅-injective PEq.refl PEq.refl PEq.refl = PEq.refl , PEq.refl , PEq.refl

    ◅-injective′ :
      ∀ {i₁ i₂ i₃ j₂} {x : T i₁ i₂} {y : T i₁ j₂}
      {xs : Star T i₂ i₃} {ys : Star T j₂ i₃} →
      x ◅ xs ≡ y ◅ ys →
      Σ[ eq₂ ∈ i₂ ≡ j₂ ] PEq.subst₂ T PEq.refl eq₂ x ≡ y
                       × PEq.subst₂ (Star T) eq₂ PEq.refl xs ≡ ys
    ◅-injective′ = ◅-injective PEq.refl PEq.refl

    ◅◅≡ε :
      ∀ {i j k} {xs : Star T i j} {ys : Star T j k}
      (ki : k ≡ i) → PEq.subst (Star T i) ki (xs ◅◅ ys) ≡ ε →
      Σ[ ji ∈ j ≡ i ] Σ[ kj ∈ k ≡ j ] PEq.subst (Star T i) ji xs ≡ ε
                                    × PEq.subst (Star T j) kj ys ≡ ε
    ◅◅≡ε {xs = ε} PEq.refl eq = PEq.refl , PEq.refl , PEq.refl , eq
    ◅◅≡ε {xs = x ◅ xs} PEq.refl ()

    ◅◅≡ε′ :
      ∀ {i j} (xs : Star T i j) (ys : Star T j i) → xs ◅◅ ys ≡ ε →
      Σ[ ij ∈ i ≡ j ] PEq.subst (Star T i) (PEq.sym ij) xs ≡ ε
                    × PEq.subst (Star T j)          ij  ys ≡ ε
    ◅◅≡ε′ ε ys eq = PEq.refl , PEq.refl , eq
    ◅◅≡ε′ (x ◅ xs) ys ()

    Non-trivial : ∀ {i j} → Star T i j → Set _
    Non-trivial ε = ⊥
    Non-trivial (_ ◅ _) = ⊤

    infix 4 _⊑_ _⊏_
    -- Subsequences: xs is a sequence completely contained (contiguously) in ys
    record _⊑_ {j j′ k k′} (xs : Star T j′ k′) (ys : Star T j k)
               : Set (i L.⊔ t) where
      field
        ls : Star T j j′
        rs : Star T k′ k
        eq : ls ◅◅ xs ◅◅ rs ≡ ys

    -- Proper subsequences xs ⊑ ys and xs ≢ ys
    record _⊏_ {j j′ k k′} (xs : Star T j′ k′) (ys : Star T j k)
               : Set (i L.⊔ t) where
      field
        ls : Star T j j′
        rs : Star T k′ k
        eq : ls ◅◅ xs ◅◅ rs ≡ ys
        non-trivial : Non-trivial ls ⊎ Non-trivial rs

    distinct-endpoints→non-trivial :
      ∀ {j k} → (xs : Star T j k) → j ≢ k → Non-trivial xs
    distinct-endpoints→non-trivial ε neq = neq PEq.refl
    distinct-endpoints→non-trivial (x ◅ xs) neq = tt

    fold-preorder :
      ∀ {ℓ₁ ℓ₂} (pre : Preorder i ℓ₁ ℓ₂) →
      let open Preorder pre in
      (eq : I ≡ Carrier) →
      let coe = PEq.subst id eq in
      (∀ {j k} → T j k → coe j ∼ coe k) →
      ∀ {j k} (xs : Star T j k) → coe j ∼ coe k
    fold-preorder pre eq f ε = Preorder.refl pre
    fold-preorder pre eq f (x ◅ xs) =
      Preorder.trans pre (f x) (fold-preorder pre eq f xs)

  -- Induction on Starˡ looks back up to the penultimate step, rather than
  -- looking forward to after the first step.
  Starˡ : ∀ {i t} {I : Set i} (T : Rel I t) → Rel I (i L.⊔ t)
  Starˡ T = flip (Star (flip T))
