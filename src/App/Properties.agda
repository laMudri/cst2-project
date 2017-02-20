module App.Properties where
  open import App

  open import Data.Bool using (Bool; true; false)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties using (_≟_)
  open import Data.Nat using (ℕ; zero; suc; _+_)
  open import Data.Nat.Properties.Simple using (+-suc)
  open import Data.List using (List; []; _∷_; length; filter)
  open import Data.Vec using (Vec; []; _∷_; sum; tabulate; toList; allFin)

  open import Function

  open import Relation.Binary.PropositionalEquality
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  abstract
    appAtV-sum-suc : ∀ {n} i (xs : Vec ℕ n) → sum (appAtV i suc xs) ≡ suc (sum xs)
    appAtV-sum-suc zero (x ∷ xs) = refl
    appAtV-sum-suc (suc i) (x ∷ xs) = begin
      x + sum (appAtV i suc xs)  ≡⟨ cong (x +_) (appAtV-sum-suc i xs) ⟩
      x + suc (sum xs)           ≡⟨ +-suc x (sum xs) ⟩
      suc (x + sum xs)           ∎
      where open ≡-Reasoning

    appAt-diagonal :
      ∀ {a n} {A : Fin n → Set a} i (f : A i → A i) (g : ∀ j → A j) →
      appAt i f g i ≡ f (g i)
    appAt-diagonal i f g with i ≟ i
    appAt-diagonal i f g | yes refl = refl
    appAt-diagonal i f g | no ¬p = ⊥-elim (¬p refl)

    appAt-non-diagonal :
      ∀ {a n} {A : Fin n → Set a} i (f : A i → A i) (g : ∀ j → A j) j →
      i ≢ j → appAt i f g j ≡ g j
    appAt-non-diagonal i f g j neq with i ≟ j
    appAt-non-diagonal i f g j neq | yes p = ⊥-elim (neq p)
    appAt-non-diagonal i f g j neq | no ¬p = refl

    appAt-∘-suc : ∀ {a n} {A : Set a} i (f : A → A) (g : Fin (suc n) → A) →
                  ∀ j → appAt (suc i) f g (suc j) ≡ appAt i f (g ∘ suc) j
    appAt-∘-suc i f g j with suc i ≟ suc j
    appAt-∘-suc i f g .i | yes refl =
      sym (appAt-diagonal i f (g ∘ suc))
    appAt-∘-suc i f g j | no ¬p =
      sym (appAt-non-diagonal i f (g ∘ suc) j (¬p ∘ cong suc))

    tabulate-cong : ∀ {a n} {A : Set a} {f g : Fin n → A} →
                    (∀ i → f i ≡ g i) → tabulate f ≡ tabulate g
    tabulate-cong {n = zero} {f = f} {g} eq = refl
    tabulate-cong {n = suc n} {f = f} {g} eq =
      cong₂ _∷_ (eq Fin.zero) (tabulate-cong {n = n} (eq ∘ suc))

    appAtV-appAt : ∀ {a n} {A : Set a} i (f : A → A) (g : Fin n → A) →
                   appAtV i f (tabulate g) ≡ tabulate (appAt i f g)
    appAtV-appAt zero f g = refl
    appAtV-appAt (suc i) f g = cong (g Fin.zero ∷_) (begin
      appAtV i f (tabulate (g ∘ suc))
        ≡⟨ appAtV-appAt i f (g ∘ suc) ⟩
      tabulate (appAt i f (g ∘ suc))
        ≡⟨ sym (tabulate-cong (appAt-∘-suc i f g)) ⟩
      tabulate (appAt (suc i) f g ∘ suc)
        ∎)
      where open ≡-Reasoning

    appAt-sum-suc : ∀ {n} i (f : Fin n → ℕ) →
                    ∣ appAt i suc f ∣ ≡ suc ∣ f ∣
    appAt-sum-suc i f = begin
      ∣ appAt i suc f ∣
        ≡⟨ cong sum (sym (appAtV-appAt i suc f)) ⟩
      sum (appAtV i suc (tabulate f))
        ≡⟨ appAtV-sum-suc i (tabulate f) ⟩
      suc ∣ f ∣
        ∎
      where open ≡-Reasoning

    postulate
      appWhenV-sum-suc :
        ∀ {n} p (xs : Vec ℕ n) →
        sum (appWhenV p suc xs) ≡ length (filter p (toList (allFin n))) + sum xs
    {-
    appWhenV-sum-suc p [] = refl
    appWhenV-sum-suc {suc n} p (x ∷ xs) with p Fin.zero
    appWhenV-sum-suc {suc n} p (x ∷ xs) | false = {-begin
      x + sum (appWhenV (p ∘ suc) suc xs)
        ≡⟨ cong (x +_) (appWhenV-sum-suc (p ∘ suc) xs) ⟩
      x + (List.length (filter (p ∘ suc) (toList (allFin n))) + sum xs)
        ≡⟨ x+[y+z]=y+[x+z] x (List.length (filter (p ∘ suc) (toList (allFin n)))) (sum xs) ⟩
      _ + (x + sum xs)
        ∎-}
      --trans (cong (x +_) (appWhenV-sum-suc (p ∘ suc) xs))
      --          (x+[y+z]=y+[x+z] x (List.length (filter (p ∘ suc) (toList (allFin n)))) (sum xs))
      --where open ≡-Reasoning
      {!!}
    appWhenV-sum-suc {suc n} p (x ∷ xs) | true = cong suc {!appWhenV-sum-suc (p ∘ suc) xs!}
    -}

    appWhen-∘-suc : ∀ {a n} {A : Set a} p f (g : Fin (suc n) → A) i →
                    appWhen (p ∘ suc) f (g ∘ suc) i ≡ appWhen p f g (suc i)
    appWhen-∘-suc p f g i with p (suc i)
    appWhen-∘-suc p f g i | false = refl
    appWhen-∘-suc p f g i | true = refl

    appWhenV-appWhen : ∀ {a n} {A : Set a} p (f : A → A) (g : Fin n → A) →
                       appWhenV p f (tabulate g) ≡ tabulate (appWhen p f g)
    appWhenV-appWhen {n = zero} p f g = refl
    appWhenV-appWhen {n = suc n} p f g with p Fin.zero
    appWhenV-appWhen {_} {suc n} p f g | false =
      cong (g Fin.zero ∷_) (trans (appWhenV-appWhen (p ∘ suc) f (g ∘ suc))
                                          (tabulate-cong (appWhen-∘-suc p f g)))
    appWhenV-appWhen {_} {suc n} p f g | true =
      cong (f (g (Fin.zero)) ∷_) (trans (appWhenV-appWhen (p ∘ suc) f (g ∘ suc))
                                                (tabulate-cong (appWhen-∘-suc p f g)))

    appWhen-sum-suc :
      ∀ {n} p (f : Fin n → ℕ) →
      ∣ appWhen p suc f ∣ ≡ length (filter p (toList (allFin n))) + ∣ f ∣
    appWhen-sum-suc {n} p f = begin
      ∣ appWhen p suc f ∣
        ≡⟨ cong sum (sym (appWhenV-appWhen p suc f)) ⟩
      sum (appWhenV p suc (tabulate f))
        ≡⟨ appWhenV-sum-suc p (tabulate f) ⟩
      length (filter p (toList (allFin n))) + ∣ f ∣
        ∎
      where open ≡-Reasoning

    sum-0 : ∀ n → ∣_∣ {n = n} (λ _ → 0) ≡ 0
    sum-0 zero = refl
    sum-0 (suc n) = sum-0 n
