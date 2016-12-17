module Star where
  open import Data.Star public

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Product using (Σ-syntax; _×_; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)

  open import Function

  open import Level

  open import Relation.Binary using (Rel)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_; _≢_)
  open import Relation.Nullary using (¬_)

  ◅-injective :
    ∀ {i t} {I : Set i} {T : Rel I t} {i₁ i₂ i₃ j₁ j₂ j₃}
    {x : T i₁ i₂} {y : T j₁ j₂} {xs : Star T i₂ i₃} {ys : Star T j₂ j₃}
    (eq₁ : i₁ ≡ j₁) (eq₃ : i₃ ≡ j₃) →
    PEq.subst₂ (Star T) eq₁ eq₃ (x ◅ xs) ≡ y ◅ ys →
    Σ[ eq₂ ∈ i₂ ≡ j₂ ] PEq.subst₂ T eq₁ eq₂ x ≡ y
                     × PEq.subst₂ (Star T) eq₂ eq₃ xs ≡ ys
  ◅-injective PEq.refl PEq.refl PEq.refl = PEq.refl , PEq.refl , PEq.refl

  ◅-injective′ :
    ∀ {i t} {I : Set i} {T : Rel I t} {i₁ i₂ i₃ j₂}
    {x : T i₁ i₂} {y : T i₁ j₂} {xs : Star T i₂ i₃} {ys : Star T j₂ i₃} →
    x ◅ xs ≡ y ◅ ys →
    Σ[ eq₂ ∈ i₂ ≡ j₂ ] PEq.subst₂ T PEq.refl eq₂ x ≡ y
                     × PEq.subst₂ (Star T) eq₂ PEq.refl xs ≡ ys
  ◅-injective′ = ◅-injective PEq.refl PEq.refl

  ◅◅≡ε :
    ∀ {ℓ t} {I : Set ℓ} {T : Rel I t} {i j k} {xs : Star T i j} {ys : Star T j k}
    (ki : k ≡ i) → PEq.subst (Star T i) ki (xs ◅◅ ys) ≡ ε →
    Σ[ ji ∈ j ≡ i ] Σ[ kj ∈ k ≡ j ] PEq.subst (Star T i) ji xs ≡ ε
                                  × PEq.subst (Star T j) kj ys ≡ ε
  ◅◅≡ε {xs = ε} PEq.refl eq = PEq.refl , PEq.refl , PEq.refl , eq
  ◅◅≡ε {xs = x ◅ xs} PEq.refl ()

  ◅◅≡ε′ :
    ∀ {ℓ t} {I : Set ℓ} {T : Rel I t} {i j} (xs : Star T i j) (ys : Star T j i) →
    xs ◅◅ ys ≡ ε →
    Σ[ ij ∈ i ≡ j ] PEq.subst (Star T i) (PEq.sym ij) xs ≡ ε
                  × PEq.subst (Star T j)          ij  ys ≡ ε
  ◅◅≡ε′ ε ys eq = PEq.refl , PEq.refl , eq
  ◅◅≡ε′ (x ◅ xs) ys ()

  Non-trivial : ∀ {i t} {I : Set i} {T : Rel I t} {i j} → Star T i j → Set _
  Non-trivial ε = ⊥
  Non-trivial (_ ◅ _) = ⊤

  infix 4 _⊑_ _⊏_
  -- Subsequences: xs is a sequence completely contained (contiguously) in ys
  record _⊑_ {i t} {I : Set i} {T : Rel I t} {j j′ k k′}
             (xs : Star T j′ k′) (ys : Star T j k) : Set (i ⊔ t) where
    field
      ls : Star T j j′
      rs : Star T k′ k
      eq : ls ◅◅ xs ◅◅ rs ≡ ys

  ---- Proper subsequences xs ⊑ ys and xs ≢ ys
  record _⊏_ {i t} {I : Set i} {T : Rel I t} {j j′ k k′}
             (xs : Star T j′ k′) (ys : Star T j k) : Set (i ⊔ t) where
    field
      ls : Star T j j′
      rs : Star T k′ k
      eq : ls ◅◅ xs ◅◅ rs ≡ ys
      non-trivial : Non-trivial ls ⊎ Non-trivial rs

  -- This proof mostly rests on the subsequence equation
  --   eq : xs ⊏ ε → ls ◅◅ xs ◅◅ rs ≡ ε
  -- If ls = ε, we get xs ◅◅ rs ≡ ε, and do a similar test on xs, then rs.
  -- If ls = _ ◅ _, we get _ ◅ _ ≡ ε, which cannot hold.
  -- If ls = ε, xs = ε, and rs = ε, this is in contradiction with non-trivial.
  ¬⊏ε :
    ∀ {i t} {I : Set i} {T : Rel I t} {i j k}
    (xs : Star T i j) → ¬ (xs ⊏ ε {x = k})
  ¬⊏ε xs record { ls = (l ◅ ls) ; rs = rs ; eq = () ; non-trivial = _ }
  ¬⊏ε (x ◅ xs) record { ls = ε ; rs = rs ; eq = () ; non-trivial = _ }
  ¬⊏ε ε record { ls = ε ; rs = (r ◅ rs) ; eq = () ; non-trivial = _ }
  ¬⊏ε ε record { ls = ε ; rs = ε ; eq = eq ; non-trivial = (inj₁ ()) }
  ¬⊏ε ε record { ls = ε ; rs = ε ; eq = eq ; non-trivial = (inj₂ ()) }

  ⊏x◅ε⇒≡ε :
    ∀ {i t} {I : Set i} {T : Rel I t} {j j′ k k′}
    {xs : Star T j′ k′} {t : T j k} → xs ⊏ t ◅ ε →
    Σ[ eq ∈ k′ ≡ j′ ] PEq.subst (Star T j′) eq xs ≡ ε

  -- Pick off the successful case
  ⊏x◅ε⇒≡ε {xs = ε} record { ls = ls ; rs = rs ; eq = eq ; non-trivial = nt } =
    PEq.refl , PEq.refl

  -- Simple failure cases
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = rs ; eq = eq ; non-trivial = (inj₁ ()) }
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = ε ; eq = eq ; non-trivial = (inj₂ ()) }

  -- If ls = ε then rs = _ ◅ _. We also have by this point that xs = _ ◅ _,
  -- for contradiction.
  -- ε ◅◅ (x ◅ xs) ◅◅ (r ◅ rs) = x ◅ (xs ◅◅ (r ◅ rs)), so we have the following
  -- deductions:
  --   eq  : x ◅ (xs ◅◅ (r ◅ rs)) ≡ t ◅ ε
  --   eq′ :       xs ◅◅ (r ◅ rs) ≡ ε
  --   eq″ :               r ◅ rs ≡ ε
  -- This cannot be true.
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = (r ◅ rs) ; eq = eq ; non-trivial = (inj₂ tt) }
    with ◅-injective′ eq
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = (r ◅ rs) ; eq = eq ; non-trivial = (inj₂ tt) }
          | PEq.refl , _ , eq′
    with ◅◅≡ε′ xs _ eq′
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = (r ◅ rs) ; eq = eq ; non-trivial = (inj₂ tt) }
          | PEq.refl , _ , eq′ | PEq.refl , _ , ()

  -- At this point, we consider ls = _ ◅ _ and xs = _ ◅ _. Similar to last time,
  -- we have
  --   eq  : l ◅ (ls ◅◅ (x ◅ xs) ◅◅ rs) ≡ t ◅ ε
  --   eq′ :       ls ◅◅ (x ◅ xs) ◅◅ rs ≡ ε
  --   eq″ :               x ◅ xs ◅◅ rs ≡ ε
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = (l ◅ ls) ; rs = rs ; eq = eq ; non-trivial = nt }
    with ◅-injective′ eq
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = (l ◅ ls) ; rs = rs ; eq = eq ; non-trivial = nt }
          | PEq.refl , _ , eq′
    with ◅◅≡ε′ ls _ eq′
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = (l ◅ ls) ; rs = rs ; eq = eq ; non-trivial = nt }
          | PEq.refl , _ , eq′ | PEq.refl , _ , ()

  distinct-endpoints→non-trivial :
    ∀ {i t} {I : Set i} {T : Rel I t} {j k} →
    (xs : Star T j k) → j ≢ k → Non-trivial xs
  distinct-endpoints→non-trivial ε neq = neq PEq.refl
  distinct-endpoints→non-trivial (x ◅ xs) neq = tt

  -- Induction on Starˡ looks back up to the penultimate step, rather than
  -- looking forward to after the first step.
  Starˡ : ∀ {i t} {I : Set i} (T : Rel I t) → Rel I (i ⊔ t)
  Starˡ T = flip (Star (flip T))

  -- There is a transition in the chain satisfying P
  data Any↝ {i t p} {I : Set i} {T : Rel I t} (P : ∀ {j k} → T j k → Set p)
            : ∀ {j k} → Star T j k → Set (i ⊔ t ⊔ p) where
    here : ∀ {j k l} {x : T j k} {xs : Star T k l} → P x → Any↝ P (x ◅ xs)
    there : ∀ {j k l} {x : T j k} {xs : Star T k l} →
            Any↝ P xs → Any↝ P (x ◅ xs)
