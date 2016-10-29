module Finite where
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as Fin using (Fin; raise; inject+; toℕ; fromℕ≤; reduce≥)
  open import Data.Nat as ℕ using (ℕ; zero; suc; _+_; _<_; z≤n; s≤s; _≥_)
  open import Data.Nat.Properties.Simple using (+-suc)
  open import Data.Product using (∃; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂; [_,_]; [_,_]′; map)
  open import Data.Unit using (⊤; tt)

  open import Function
  open import Function.Related using (Kind; bijection; _∼[_]_; ⇒→; ⇒←)

  import Level

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; refl; sym; trans; cong; subst; setoid; inspect; [_])
  open import Relation.Binary.SetoidReasoning

  Finite : ∀ {a} (A : Set a) → Set a
  Finite A = ∃ λ n → A ∼[ bijection ] Fin n

  [] : Finite ⊥
  [] = zero , record
    { to   = record { _⟨$⟩_ = λ () ; cong = λ {} }
    ; from = record { _⟨$⟩_ = λ () ; cong = λ {} }
    ; inverse-of = record { left-inverse-of = λ () ; right-inverse-of = λ () }
    }

  split : ∀ m n → Fin (m + n) → Fin m ⊎ Fin n
  split zero n x = inj₂ x
  split (suc m) n Fin.zero = inj₁ Fin.zero
  split (suc m) n (Fin.suc x) with split m n x
  split (suc m) n (Fin.suc x) | inj₁ y = inj₁ (Fin.suc y)
  split (suc m) n (Fin.suc x) | inj₂ y = inj₂ y

  join : ∀ m n → Fin m ⊎ Fin n → Fin (m + n)
  join m n (inj₁ x) = inject+ n x
  join m n (inj₂ y) = raise m y

  inj₁≢inj₂ : ∀ {a b} {A : Set a} {B : Set b} {x : A} {y : B} → inj₁ x ≢ inj₂ y
  inj₁≢inj₂ {A = A} {B} eq = subst P eq tt
    where
    P : A ⊎ B → Set
    P (inj₁ _) = ⊤
    P (inj₂ _) = ⊥

  inj₁-injective :
    ∀ {a b} {A : Set a} {B : Set b} {x y : A} → inj₁ {B = B} x ≡ inj₁ y → x ≡ y
  inj₁-injective refl = refl

  inj₂-injective :
    ∀ {a b} {A : Set a} {B : Set b} {x y : B} → inj₂ {A = A} x ≡ inj₂ y → x ≡ y
  inj₂-injective refl = refl

  split-< :
    ∀ m n (x : Fin (m + n)) (lt : toℕ x < m) →
    split m n x ≡ inj₁ (fromℕ≤ lt)
  split-< (suc m) n Fin.zero (s≤s z≤n) = refl
  split-< (suc m) n (Fin.suc x) (s≤s lt)
    with split-< m n x lt | split m n x | inspect (split m n) x
  split-< (suc _) n (Fin.suc x) (s≤s (s≤s lt)) | ih | inj₁ y | [ eq ] =
    cong (λ z → inj₁ (Fin.suc z)) lemma
    where
    lemma : y ≡ fromℕ≤ (s≤s lt)
    lemma = inj₁-injective (trans (sym eq) ih)
  ... | ih | inj₂ y | [ eq ] =
    ⊥-elim (inj₁≢inj₂ (trans (sym ih) eq))

  inject+-< : ∀ m n (x : Fin m) → toℕ (inject+ n x) < m
  inject+-< (suc m) n Fin.zero = s≤s z≤n
  inject+-< (suc m) n (Fin.suc x) = s≤s (inject+-< m n x)

  inject+-<-correct : ∀ m n x → fromℕ≤ (inject+-< m n x) ≡ x
  inject+-<-correct (suc m) n Fin.zero = refl
  inject+-<-correct (suc (suc m)) n (Fin.suc Fin.zero) = refl
  inject+-<-correct (suc (suc m)) n (Fin.suc (Fin.suc x)) =
    cong Fin.suc (inject+-<-correct (suc m) n (Fin.suc x))

  split-inject+ : ∀ m n x → split m n (inject+ n x) ≡ inj₁ x
  split-inject+ m n x =
    trans (split-< m n (inject+ n x) (inject+-< m n x))
              (cong inj₁ (inject+-<-correct m n x))

  split-≥ :
    ∀ m n (x : Fin (m + n)) (ge : toℕ x ≥ m) →
    split m n x ≡ inj₂ (reduce≥ x ge)
  split-≥ zero n x ge = refl
  split-≥ (suc m) n Fin.zero ()
  split-≥ (suc m) n (Fin.suc x) (s≤s ge)
    with split-≥ m n x ge | split m n x | inspect (split m n) x
  split-≥ (suc m) n (Fin.suc x) (s≤s ge) | ih | inj₁ y | [ eq ] =
    ⊥-elim (inj₁≢inj₂ (trans (sym eq) ih))
  split-≥ (suc m) n (Fin.suc x) (s≤s ge) | ih | inj₂ y | [ eq ] =
    -- Note:       _______   This hidden parameter needs to be changed to make
    --            /-------\  the result of the desired type.
    let r = inj₂ {A = Fin m} y ≡ inj₂ (reduce≥ x ge) ∋
            trans (sym eq) ih in
    inj₂ {A = Fin (suc m)} y ≡ inj₂ (reduce≥ x ge) ∋
    cong inj₂ (inj₂-injective r)

  raise-≥ : ∀ m n (x : Fin n) → toℕ (raise m x) ≥ m
  raise-≥ zero n x = z≤n
  raise-≥ (suc m) n x = s≤s (raise-≥ m n x)

  raise-≥-correct : ∀ m n x → reduce≥ (raise m x) (raise-≥ m n x) ≡ x
  raise-≥-correct zero n x = refl
  raise-≥-correct (suc m) n x = raise-≥-correct m n x

  split-raise : ∀ m n x → split m n (raise m x) ≡ inj₂ x
  split-raise m n x =
    trans (split-≥ m n (raise m x) (raise-≥ m n x))
              (cong inj₂ (raise-≥-correct m n x))

  split-join : ∀ m n x → split m n (join m n x) ≡ x
  split-join m n (inj₁ x) = split-inject+ m n x
  split-join m n (inj₂ x) = split-raise m n x

  zero≢suc : ∀ {n x} → Fin.zero ≢ Fin.suc {n} x
  zero≢suc {n} eq = subst P eq tt
    where
    P : ∀ {m} → Fin m → Set
    P Fin.zero = ⊤
    P (Fin.suc _) = ⊥

  inject+-split : ∀ m n x y → split m n x ≡ inj₁ y → inject+ n y ≡ x
  inject+-split zero n x ()
  inject+-split (suc m) n Fin.zero y eq =
    begin⟨ setoid (Fin (suc m + n)) ⟩
      inject+ n y
    ≡⟨ cong (inject+ n) (inj₁-injective (sym eq)) ⟩
      inject+ n (Fin.zero {m})
    ≡⟨ refl ⟩
      Fin.zero
    ∎
  inject+-split (suc m) n (Fin.suc x) y eq
    with split m n x | inspect (split m n) x
  inject+-split (suc m) n (Fin.suc x) Fin.zero () | inj₁ z | _
  inject+-split (suc m) n (Fin.suc x) (Fin.suc y) eq | inj₁ z | [ eq′ ] =
    begin⟨ setoid (Fin (suc m + n)) ⟩
      inject+ n (Fin.suc y)
    ≡⟨ cong (inject+ n) (sym (inj₁-injective eq)) ⟩
      inject+ n (Fin.suc z)
    ≡⟨ refl ⟩
      Fin.suc (inject+ n z)
    ≡⟨ cong Fin.suc (inject+-split m n x z eq′) ⟩
      Fin.suc x
    ∎
  inject+-split (suc m) n (Fin.suc x) y () | inj₂ z | r

  raise-split : ∀ m n x y → split m n x ≡ inj₂ y → raise m y ≡ x
  raise-split zero n x y eq = sym (inj₂-injective eq)
  raise-split (suc m) n Fin.zero y ()
  raise-split (suc m) n (Fin.suc x) y eq
    with split m n x | inspect (split m n) x
  raise-split (suc m) n (Fin.suc x) y () | inj₁ z | _
  raise-split (suc m) n (Fin.suc x) y eq | inj₂ z | [ eq′ ] =
    cong Fin.suc $
    begin⟨ setoid (Fin (m + n)) ⟩
      raise m y
    ≡⟨ cong (raise m) (sym (inj₂-injective eq)) ⟩
      raise m z
    ≡⟨ raise-split m n x z eq′ ⟩
      x
    ∎

  join-split : ∀ m n x → join m n (split m n x) ≡ x
  join-split zero n x = refl
  join-split (suc m) n Fin.zero = refl
  join-split (suc m) n (Fin.suc x) with split m n x | inspect (split m n) x
  join-split (suc m) n (Fin.suc x) | inj₁ y | [ eq ] =
    cong Fin.suc (inject+-split m n x y eq)
  join-split (suc m) n (Fin.suc x) | inj₂ y | [ eq ] =
    cong Fin.suc (raise-split m n x y eq)

  infixr 5 _++_
  _++_ :
    ∀ {a b} {A : Set a} {B : Set b} → Finite A → Finite B → Finite (A ⊎ B)
  _++_ {A = A} {B} (na , ia) (nb , ib) = na + nb , record
    { to = record { _⟨$⟩_ = f ; cong = cong _ }
    ; from = record { _⟨$⟩_ = g ; cong = cong _ }
    ; inverse-of = record { left-inverse-of = g-f ; right-inverse-of = f-g }
    }
    where
    open import Function.Inverse using (Inverse)

    f : A ⊎ B → Fin (na + nb)
    f = join na nb ∘′ map (⇒→ ia) (⇒→ ib)

    g : Fin (na + nb) → A ⊎ B
    g = map (⇒← ia) (⇒← ib) ∘′ split na nb

    g-f : ∀ x → g (f x) ≡ x
    g-f (inj₁ a) =
      let open Inverse ia in
      begin⟨ setoid (A ⊎ B) ⟩
        map (⇒← ia) (⇒← ib) (split na nb (inject+ nb (⇒→ ia a)))
      ≡⟨ cong (map (⇒← ia) (⇒← ib)) (split-inject+ na nb (⇒→ ia a)) ⟩
        map (⇒← ia) (⇒← ib) (inj₁ (⇒→ ia a))
      ≡⟨ refl ⟩
        inj₁ (⇒← ia (⇒→ ia a))
      ≡⟨ cong inj₁ (left-inverse-of a) ⟩
        inj₁ a
      ∎
    g-f (inj₂ b) =
      let open Inverse ib in
      begin⟨ setoid (A ⊎ B) ⟩
        map (⇒← ia) (⇒← ib) (split na nb (raise na (⇒→ ib b)))
      ≡⟨ cong (map (⇒← ia) (⇒← ib)) (split-raise na nb (⇒→ ib b)) ⟩
        map (⇒← ia) (⇒← ib) (inj₂ (⇒→ ib b))
      ≡⟨ refl ⟩
        inj₂ (⇒← ib (⇒→ ib b))
      ≡⟨ cong inj₂ (left-inverse-of b) ⟩
        inj₂ b
      ∎

    f-g : ∀ x → f (g x) ≡ x
    f-g x with split na nb x | inspect (split na nb) x
    f-g x | inj₁ y | [ eq ] =
      let open Inverse ia in
      begin⟨ setoid (Fin (na + nb)) ⟩
        inject+ nb (⇒→ ia (⇒← ia y))
      ≡⟨ cong (inject+ nb) (right-inverse-of y) ⟩
        inject+ nb y
      ≡⟨ inject+-split na nb x y eq ⟩
        x
      ∎
    f-g x | inj₂ y | [ eq ] =
      let open Inverse ib in
      begin⟨ setoid (Fin (na + nb)) ⟩
        raise na (⇒→ ib (⇒← ib y))
      ≡⟨ cong (raise na) (right-inverse-of y) ⟩
        raise na y
      ≡⟨ raise-split na nb x y eq ⟩
        x
      ∎
