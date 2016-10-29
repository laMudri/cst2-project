module Finite where
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as Fin using (Fin; raise; inject+; toℕ; fromℕ≤; reduce≥)
  open import Data.Nat as ℕ using (ℕ; zero; suc; _+_; _<_; z≤n; s≤s; _≥_)
  open import Data.Nat.Properties.Simple using (+-suc)
  open import Data.Product using (∃; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂; [_,_]; [_,_]′; map)
  open import Data.Unit using (⊤; tt)

  open import Function
  open import Function.Equality as E using (Π; _⟶_)
  open import Function.Related using (Kind; bijection; _∼[_]_; ⇒→; ⇒←)
  open import Function.Inverse as I using (Inverse)

  import Level as L

  open import Relation.Binary using (Setoid)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; refl; sym; trans; cong; subst; setoid; inspect; [_])
  open import Relation.Binary.SetoidReasoning

  Finite : ∀ {c ℓ} (A : Setoid c ℓ) → Set (c L.⊔ ℓ)
  Finite A = ∃ λ n → Inverse A (setoid (Fin n))

  [] : Finite (setoid ⊥)
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

  _S⊎_ : ∀ {c c′ ℓ ℓ′} → Setoid c ℓ → Setoid c′ ℓ′ → Setoid (c L.⊔ c′) (ℓ L.⊔ ℓ′)
  _S⊎_ {c} {c′} {ℓ} {ℓ′} A B = record
    { Carrier = AC ⊎ BC
    ; _≈_ = λ { (inj₁ i) (inj₁ j) → L.Lift {ℓ} {ℓ L.⊔ ℓ′} (i ≈A j)
              ; (inj₁ _) (inj₂ _) → L.Lift ⊥
              ; (inj₂ _) (inj₁ _) → L.Lift ⊥
              ; (inj₂ i) (inj₂ j) → L.Lift {ℓ′} {ℓ L.⊔ ℓ′} (i ≈B j)
              }
    ; isEquivalence = record
      { refl = λ { {inj₁ x} → L.lift reflA ; {inj₂ y} → L.lift reflB }
      ; sym = λ { {inj₁ i} {inj₁ j} (L.lift eq) → L.lift (symA eq)
                ; {inj₁ _} {inj₂ _} (L.lift ())
                ; {inj₂ _} {inj₁ _} (L.lift ())
                ; {inj₂ i} {inj₂ j} (L.lift eq) → L.lift (symB eq)
                }
      ; trans = λ { {inj₁ i} {inj₁ j} {inj₁ k} (L.lift i≈j) (L.lift j≈k) →
                    L.lift (transA i≈j j≈k)
                  ; {inj₁ _} {inj₁ _} {inj₂ _} eql (L.lift ())
                  ; {inj₁ _} {inj₂ _} (L.lift ()) eqr
                  ; {inj₂ _} {inj₁ _} (L.lift ()) eqr
                  ; {inj₂ _} {inj₂ _} {inj₁ _} eql (L.lift ())
                  ; {inj₂ i} {inj₂ j} {inj₂ k} (L.lift i≈j) (L.lift j≈k) →
                    L.lift (transB i≈j j≈k)
                  }
      }
    }
    where
    open Setoid A renaming
      ( Carrier to AC; _≈_ to _≈A_; isEquivalence to isEquivalenceA
      ; refl to reflA; sym to symA; trans to transA
      )
    open Setoid B renaming
      ( Carrier to BC; _≈_ to _≈B_; isEquivalence to isEquivalenceB
      ; refl to reflB; sym to symB; trans to transB
      )

  Sinj₁ : ∀ {ca cb ℓa ℓb} {A : Setoid ca ℓa} {B : Setoid cb ℓb} → A ⟶ A S⊎ B
  Sinj₁ = record { _⟨$⟩_ = inj₁ ; cong = L.lift }

  Sinj₂ : ∀ {ca cb ℓa ℓb} {A : Setoid ca ℓa} {B : Setoid cb ℓb} → B ⟶ A S⊎ B
  Sinj₂ = record { _⟨$⟩_ = inj₂ ; cong = L.lift }

  S[_,_] :
    ∀ {ca cb cc ℓa ℓb ℓc}
    {A : Setoid ca ℓa} {B : Setoid cb ℓb} {C : Setoid cc ℓc} →
    (A ⟶ C) → (B ⟶ C) → (A S⊎ B ⟶ C)
  S[ f , g ] = record
    { _⟨$⟩_ = [ ⟨f⟩ , ⟨g⟩ ]′
    ; cong = λ { {inj₁ i} {inj₁ j} (L.lift i≈j) → congf i≈j
               ; {inj₁ _} {inj₂ _} (L.lift ())
               ; {inj₂ _} {inj₁ _} (L.lift ())
               ; {inj₂ i} {inj₂ j} (L.lift i≈j) → congg i≈j
               }
    }
    where
    open Π f renaming (_⟨$⟩_ to ⟨f⟩; cong to congf)
    open Π g renaming (_⟨$⟩_ to ⟨g⟩; cong to congg)

  S⊎-inverse :
    ∀ {ca ca′ cb cb′ ℓa ℓa′ ℓb ℓb′}
    {A : Setoid ca ℓa} {A′ : Setoid ca′ ℓa′}
    {B : Setoid cb ℓb} {B′ : Setoid cb′ ℓb′} →
    Inverse A A′ → Inverse B B′ → Inverse (A S⊎ B) (A′ S⊎ B′)
  S⊎-inverse {A = A} {A′} {B} {B′} ia ib = record
    { to = S[ Sinj₁ E.∘ toa , Sinj₂ E.∘ tob ]
    ; from = S[ Sinj₁ E.∘ froma , Sinj₂ E.∘ fromb ]
    ; inverse-of = record
      { left-inverse-of = λ { (inj₁ a) → L.lift (left-inverse-ofa a)
                            ; (inj₂ b) → L.lift (left-inverse-ofb b)
                            }
      ; right-inverse-of = λ { (inj₁ a) → L.lift (right-inverse-ofa a)
                             ; (inj₂ b) → L.lift (right-inverse-ofb b)
                             }
      }
    }
    where
    open Inverse ia renaming
      ( to to toa; from to froma; left-inverse-of to left-inverse-ofa
      ; right-inverse-of to right-inverse-ofa
      )
    open Inverse ib renaming
      ( to to tob; from to fromb; left-inverse-of to left-inverse-ofb
      ; right-inverse-of to right-inverse-ofb
      )

  split-inverse :
    ∀ {m n} → Inverse (setoid (Fin (m + n))) (setoid (Fin m) S⊎ setoid (Fin n))
  split-inverse {m} {n} = record
    { to = record
      { _⟨$⟩_ = split m n
      ; cong = λ { {i} {.i} refl → Setoid.refl m⊎n {split m n i} }
      }
    ; from = record
      { _⟨$⟩_ = join m n
      ; cong = λ { {inj₁ i} {inj₁ .i} (L.lift refl) → refl
                 ; {inj₁ _} {inj₂ _} (L.lift ())
                 ; {inj₂ _} {inj₁ _} (L.lift ())
                 ; {inj₂ i} {inj₂ .i} (L.lift refl) → refl
                 }
      }
    ; inverse-of = record
      { left-inverse-of = join-split m n
      ; right-inverse-of = λ x → Setoid.reflexive m⊎n (split-join m n x)
      }
    }
    where
    m⊎n = setoid (Fin m) S⊎ setoid (Fin n)

  infixr 5 _++_
  _++_ :
    ∀ {c c′ ℓ ℓ′} {A : Setoid c ℓ} {B : Setoid c′ ℓ′} →
    Finite A → Finite B → Finite (A S⊎ B)
  _++_ {A = A} {B} (na , ia) (nb , ib) =
    na + nb , I.sym split-inverse I.∘ S⊎-inverse ia ib
