open import Relation.Binary using (Rel)

module Star.Properties {i t} {I : Set i} {T : Rel I t} where
  open import Star
  open import Star.StateMembership {i} {t} {I} {T}
  open import Data.Star.Properties

  open import Data.Bool using (Bool; false; true)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Nat as ℕ
    using (ℕ; zero; suc; _+_; _≤_; _<_; _>_; s≤s; z≤n; module ≤-Reasoning)
  open import Data.Nat.Properties using (_+-mono_; m≤m+n; n≤m+n; 1+n≰n)
  open import Data.Nat.Properties.Simple using (+-comm; +-assoc)
  open import Data.Product using (Σ-syntax; ∃; ∃₂; _×_; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)

  import Level as L

  open import Relation.Binary using (Poset; IsPartialOrder; DecTotalOrder)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; refl; sym; subst; subst₂; cong; module ≡-Reasoning)
  open import Relation.Nullary using (¬_)

  ε⊑ : ∀ {j k m} {xs : Star T j k} → m ∈ xs → ε {x = m} ⊑ xs
  ε⊑ {m = j} {xs} (here refl) = record { ls = ε ; rs = xs ; eq = refl }
  ε⊑ (there x m∈xs) with ε⊑ m∈xs
  ε⊑ (there x m∈xs) | record { ls = ls ; rs = rs ; eq = eq } =
    record { ls = x ◅ ls ; rs = rs ; eq = cong (x ◅_) eq }

  ◅◅-ε : ∀ {j k} (xs : Star T j k) → xs ◅◅ ε ≡ xs
  ◅◅-ε ε = refl
  ◅◅-ε (x ◅ xs) = cong (x ◅_) (◅◅-ε xs)

  length-◅◅ : ∀ {j k l} (xs : Star T j k) (ys : Star T k l) →
              length (xs ◅◅ ys) ≡ length xs + length ys
  length-◅◅ ε ys = refl
  length-◅◅ (x ◅ xs) ys = cong suc (length-◅◅ xs ys)

  --⊏⇒≢ : ∀ {j j′ k′ k} {xs : Star T j′ k′} {ys : Star T j k} →
  --      xs ⊏ ys → _≡_ {A = ∃₂ (Star T)} (j′ , k′ , xs) (j , k , ys) → ⊥
  --⊏⇒≢ record { ls = ε ; rs = rs ; eq = eq ; non-trivial = (inj₁ ()) } eq₁
  --⊏⇒≢ {xs = xs} record { ls = (x ◅ ls) ; rs = rs ; eq = eq ; non-trivial = (inj₁ tt) } refl = {!!}
  --⊏⇒≢ record { ls = ls ; rs = ε ; eq = eq ; non-trivial = (inj₂ ()) } eq₁
  --⊏⇒≢ record { ls = ls ; rs = (x ◅ rs) ; eq = eq ; non-trivial = (inj₂ tt) } refl = {!!}

  ⊑-poset : Poset _ _ _
  ⊑-poset = record
    { Carrier = ∃₂ (Star T)
    ; _≈_ = _≡_
    ; _≤_ = λ { (_ , _ , xs) (_ , _ , ys) → xs ⊑ ys }
    ; isPartialOrder = record
      { isPreorder = record
        { isEquivalence = PEq.isEquivalence
        ; reflexive =
          λ { {_ , _ , xs} refl → record { ls = ε ; rs = ε ; eq = ◅◅-ε xs } }
        ; trans = trans
        }
      ; antisym = antisym
      }
    }
    where
    trans : ∀ {j j′ j″ k″ k′ k}
            {xs : Star T j″ k″} {ys : Star T j′ k′} {zs : Star T j k} →
            xs ⊑ ys → ys ⊑ zs → xs ⊑ zs
    trans {xs = xs} {ys} {zs}
          record { ls = lsxy ; rs = rsxy ; eq = eqxy }
          record { ls = lsyz ; rs = rsyz ; eq = eqyz } =
      record
      { ls = lsyz ◅◅ lsxy
      ; rs = rsxy ◅◅ rsyz
      ; eq = begin
        (lsyz ◅◅ lsxy) ◅◅ (xs ◅◅ (rsxy ◅◅ rsyz))
          ≡⟨ cong ((lsyz ◅◅ lsxy) ◅◅_) (sym (◅◅-assoc xs rsxy rsyz)) ⟩
        (lsyz ◅◅ lsxy) ◅◅ ((xs ◅◅ rsxy) ◅◅ rsyz)
          ≡⟨ sym (◅◅-assoc (lsyz ◅◅ lsxy) (xs ◅◅ rsxy) rsyz) ⟩
        ((lsyz ◅◅ lsxy) ◅◅ (xs ◅◅ rsxy)) ◅◅ rsyz
          ≡⟨ cong (_◅◅ rsyz) (◅◅-assoc lsyz lsxy (xs ◅◅ rsxy)) ⟩
        (lsyz ◅◅ (lsxy ◅◅ (xs ◅◅ rsxy))) ◅◅ rsyz
          ≡⟨ ◅◅-assoc lsyz (lsxy ◅◅ xs ◅◅ rsxy) rsyz ⟩
        lsyz ◅◅ (lsxy ◅◅ (xs ◅◅ rsxy)) ◅◅ rsyz
          ≡⟨ cong (λ z → lsyz ◅◅ z ◅◅ rsyz) eqxy ⟩
        lsyz ◅◅ ys ◅◅ rsyz
          ≡⟨ eqyz ⟩
        zs
          ∎
      }
      where open ≡-Reasoning

    >⇒≢ : ∀ {m n} → m > n → m ≢ n
    >⇒≢ gt refl = 1+n≰n gt

    antisym : ∀ {j k l m} {xs : Star T j k} {ys : Star T l m} →
              xs ⊑ ys → ys ⊑ xs →
              _≡_ {A = ∃₂ (Star T)} (j , k , xs) (l , m , ys)
    antisym {j} {k} {.j} {.k} {xs} {ys}
            record { ls = ε ; rs = ε ; eq = eqxy }
            record { ls = ε ; rs = rsyx ; eq = eqyx } =
      cong (λ z → j , k , z) (PEq.trans (sym (◅◅-ε xs)) eqxy)
    antisym {j} {k} {.j} {.k} {xs} {ys}
            record { ls = ε ; rs = ε ; eq = eqxy }
            record { ls = (x ◅ lsyx) ; rs = rsyx ; eq = eqyx }
      with PEq.trans (sym (◅◅-ε xs)) eqxy
    ... | refl = refl
    antisym {j} {k} {.j} {m} {xs} {ys}
            record { ls = ε ; rs = (x ◅ rsxy) ; eq = eqxy }
            record { ls = lsyx ; rs = rsyx ; eq = eqyx } =
      ⊥-elim ((>⇒≢ gt) (cong length eq))
      where
      eq : (lsyx ◅◅ ys ◅◅ rsyx) ◅◅ x ◅ rsxy ≡ ys
      eq = subst (λ z → z ◅◅ x ◅ rsxy ≡ ys) (sym eqyx) eqxy

      open ≤-Reasoning
      open DecTotalOrder ℕ.decTotalOrder using () renaming (refl to ≤-refl)

      gt : length ((lsyx ◅◅ ys ◅◅ rsyx) ◅◅ x ◅ rsxy) > length ys
      gt = begin
        length ys
          <⟨ ≤-refl ⟩
        1 + length ys
          ≡⟨ +-comm 1 (length ys) ⟩
        length ys + 1
          ≤⟨ m≤m+n (length ys) (length rsyx) +-mono ≤-refl ⟩
        (length ys + length rsyx) + 1
          ≤⟨ n≤m+n (length lsyx) _ +-mono s≤s z≤n ⟩
        (length lsyx + (length ys + length rsyx)) + length (x ◅ rsxy)
          ≡⟨ cong (λ z → (length lsyx + z) + length (x ◅ rsxy))
                   (sym (length-◅◅ ys rsyx)) ⟩
        (length lsyx + length (ys ◅◅ rsyx)) + length (x ◅ rsxy)
          ≡⟨ cong (_+ length (x ◅ rsxy)) (sym (length-◅◅ lsyx _)) ⟩
        length (lsyx ◅◅ ys ◅◅ rsyx) + length (x ◅ rsxy)
          ≡⟨ sym (length-◅◅ (lsyx ◅◅ ys ◅◅ rsyx) _) ⟩
        length ((lsyx ◅◅ ys ◅◅ rsyx) ◅◅ x ◅ rsxy)
          ∎
    antisym {j} {k} {l} {m} {xs} {ys}
            record { ls = (x ◅ lsxy) ; rs = rsxy ; eq = eqxy }
            record { ls = lsyx ; rs = rsyx ; eq = eqyx } =
      ⊥-elim ((>⇒≢ gt) (cong length eq))
      where
      eq : lsyx ◅◅ (x ◅ lsxy ◅◅ xs ◅◅ rsxy) ◅◅ rsyx ≡ xs
      eq = subst (λ z → lsyx ◅◅ z ◅◅ rsyx ≡ xs) (sym eqxy) eqyx

      open ≤-Reasoning
      open DecTotalOrder ℕ.decTotalOrder using () renaming (refl to ≤-refl)

      gt : length (lsyx ◅◅ (x ◅ lsxy ◅◅ xs ◅◅ rsxy) ◅◅ rsyx) > length xs
      gt = begin
        length xs
          <⟨ ≤-refl ⟩
        1 + length xs
          ≤⟨ m≤m+n _ (length rsxy) ⟩
        (1 + length xs) + length rsxy
          ≡⟨ +-assoc 1 (length xs) (length rsxy) ⟩
        1 + (length xs + length rsxy)
          ≡⟨ cong (1 +_) (sym (length-◅◅ xs rsxy)) ⟩
        1 + length (xs ◅◅ rsxy)
          ≤⟨ ≤-refl {1} +-mono (n≤m+n (length lsxy) _) ⟩
        1 + (length lsxy + length (xs ◅◅ rsxy))
          ≡⟨ cong (1 +_) (sym (length-◅◅ lsxy _)) ⟩
        1 + length (lsxy ◅◅ xs ◅◅ rsxy)
          ≡⟨ refl ⟩
        length (x ◅ lsxy ◅◅ xs ◅◅ rsxy)
          ≤⟨ m≤m+n _ (length rsyx) ⟩
        length (x ◅ lsxy ◅◅ xs ◅◅ rsxy) + length rsyx
          ≡⟨ sym (length-◅◅ (x ◅ lsxy ◅◅ xs ◅◅ rsxy) rsyx) ⟩
        length ((x ◅ lsxy ◅◅ xs ◅◅ rsxy) ◅◅ rsyx)
          ≤⟨ n≤m+n (length lsyx) _ ⟩
        length lsyx + length ((x ◅ lsxy ◅◅ xs ◅◅ rsxy) ◅◅ rsyx)
          ≡⟨ sym (length-◅◅ lsyx _) ⟩
        length (lsyx ◅◅ (x ◅ lsxy ◅◅ xs ◅◅ rsxy) ◅◅ rsyx)  ∎

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
    Σ[ eq ∈ k′ ≡ j′ ] subst (Star T j′) eq xs ≡ ε

  -- Pick off the successful case
  ⊏x◅ε⇒≡ε {xs = ε} record { ls = ls ; rs = rs ; eq = eq ; non-trivial = nt } =
    refl , refl

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
          | refl , _ , eq′
    with ◅◅≡ε′ xs _ eq′
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = ε ; rs = (r ◅ rs) ; eq = eq ; non-trivial = (inj₂ tt) }
          | refl , _ , eq′ | refl , _ , ()

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
          | refl , _ , eq′
    with ◅◅≡ε′ ls _ eq′
  ⊏x◅ε⇒≡ε {xs = x ◅ xs}
          record { ls = (l ◅ ls) ; rs = rs ; eq = eq ; non-trivial = nt }
          | refl , _ , eq′ | refl , _ , ()
