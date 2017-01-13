module Finite where
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin as F
    using (Fin; Fin′; raise; inject₁; inject+; toℕ; fromℕ≤; reduce≥)
  open import Data.Fin.Properties as FP using (inject₁-lemma; _≟_)
  open import Data.Fin.Subset using (Subset; inside; outside; _∈_)
  open import Data.List as List using (List; length)
  open import Data.List.All as All using (All)
  open import Data.List.All.Properties using (¬Any↠All¬)
  open import Data.List.Any
    using (Any; here; there; any)
    renaming (module Membership-≡ to Mem)
  open Mem using () renaming (_∈_ to _L∈_)
  open import Data.Nat as ℕ using (ℕ; zero; suc; _+_; _<_; z≤n; s≤s; _≥_)
  import Data.Nat.Properties as ℕP
  open import Data.Nat.Properties.Simple as ℕS using (+-suc)
  open import Data.Product as Prod
    using (∃; ∃₂; _,_; proj₁; proj₂; curry; uncurry)
  open import Data.Sum using (_⊎_; inj₁; inj₂; [_,_]; [_,_]′; map)
  open import Data.Unit using (⊤; tt)
  open import Vec as V using (Vec; here; there)

  open import Function
  open import Function.Equality as E using (Π; _⟨$⟩_; cong; _⟶_)
  open import Function.Related
    using (Kind; bijection; _∼[_]_; ⇒→; ⇒←; module EquationalReasoning)
  open import Function.Surjection using (Surjection)
  open import Function.Inverse as I using (Inverse; _↔_)

  import Level as L

  open import Relation.Binary using (Setoid)
  import Relation.Binary.On as On
  open import Relation.Binary.PropositionalEquality as PEq
    using ( _≡_; _≢_; refl; sym; trans; subst; setoid; inspect; [_]
          ; →-to-⟶; module ≡-Reasoning)
  import Relation.Binary.SetoidReasoning as SetR
  open import Relation.Nullary using (¬_; Dec; yes; no)

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
  split (suc m) n F.zero = inj₁ F.zero
  split (suc m) n (F.suc x) with split m n x
  split (suc m) n (F.suc x) | inj₁ y = inj₁ (F.suc y)
  split (suc m) n (F.suc x) | inj₂ y = inj₂ y

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
  split-< (suc m) n F.zero (s≤s z≤n) = refl
  split-< (suc m) n (F.suc x) (s≤s lt)
    with split-< m n x lt | split m n x | inspect (split m n) x
  split-< (suc _) n (F.suc x) (s≤s (s≤s lt)) | ih | inj₁ y | [ eq ] =
    PEq.cong (λ z → inj₁ (F.suc z)) lemma
    where
    lemma : y ≡ fromℕ≤ (s≤s lt)
    lemma = inj₁-injective (trans (sym eq) ih)
  ... | ih | inj₂ y | [ eq ] =
    ⊥-elim (inj₁≢inj₂ (trans (sym ih) eq))

  inject+-< : ∀ m n (x : Fin m) → toℕ (inject+ n x) < m
  inject+-< (suc m) n F.zero = s≤s z≤n
  inject+-< (suc m) n (F.suc x) = s≤s (inject+-< m n x)

  inject+-<-correct : ∀ m n x → fromℕ≤ (inject+-< m n x) ≡ x
  inject+-<-correct (suc m) n F.zero = refl
  inject+-<-correct (suc (suc m)) n (F.suc F.zero) = refl
  inject+-<-correct (suc (suc m)) n (F.suc (F.suc x)) =
    PEq.cong F.suc (inject+-<-correct (suc m) n (F.suc x))

  split-inject+ : ∀ m n x → split m n (inject+ n x) ≡ inj₁ x
  split-inject+ m n x =
    trans (split-< m n (inject+ n x) (inject+-< m n x))
              (PEq.cong inj₁ (inject+-<-correct m n x))

  split-≥ :
    ∀ m n (x : Fin (m + n)) (ge : toℕ x ≥ m) →
    split m n x ≡ inj₂ (reduce≥ x ge)
  split-≥ zero n x ge = refl
  split-≥ (suc m) n F.zero ()
  split-≥ (suc m) n (F.suc x) (s≤s ge)
    with split-≥ m n x ge | split m n x | inspect (split m n) x
  split-≥ (suc m) n (F.suc x) (s≤s ge) | ih | inj₁ y | [ eq ] =
    ⊥-elim (inj₁≢inj₂ (trans (sym eq) ih))
  split-≥ (suc m) n (F.suc x) (s≤s ge) | ih | inj₂ y | [ eq ] =
    -- Note:       _______   This hidden parameter needs to be changed to make
    --            /-------\  the result of the desired type.
    let r = inj₂ {A = Fin m} y ≡ inj₂ (reduce≥ x ge) ∋
            trans (sym eq) ih in
    inj₂ {A = Fin (suc m)} y ≡ inj₂ (reduce≥ x ge) ∋
    PEq.cong inj₂ (inj₂-injective r)

  raise-≥ : ∀ m n (x : Fin n) → toℕ (raise m x) ≥ m
  raise-≥ zero n x = z≤n
  raise-≥ (suc m) n x = s≤s (raise-≥ m n x)

  raise-≥-correct : ∀ m n x → reduce≥ (raise m x) (raise-≥ m n x) ≡ x
  raise-≥-correct zero n x = refl
  raise-≥-correct (suc m) n x = raise-≥-correct m n x

  split-raise : ∀ m n x → split m n (raise m x) ≡ inj₂ x
  split-raise m n x =
    trans (split-≥ m n (raise m x) (raise-≥ m n x))
              (PEq.cong inj₂ (raise-≥-correct m n x))

  split-join : ∀ m n x → split m n (join m n x) ≡ x
  split-join m n (inj₁ x) = split-inject+ m n x
  split-join m n (inj₂ x) = split-raise m n x

  zero≢suc : ∀ {n x} → F.zero ≢ F.suc {n} x
  zero≢suc {n} eq = subst P eq tt
    where
    P : ∀ {m} → Fin m → Set
    P F.zero = ⊤
    P (F.suc _) = ⊥

  inject+-split : ∀ m n x y → split m n x ≡ inj₁ y → inject+ n y ≡ x
  inject+-split zero n x ()
  inject+-split (suc m) n F.zero y eq =
    begin⟨ setoid (Fin (suc m + n)) ⟩
      inject+ n y
    ≡⟨ PEq.cong (inject+ n) (inj₁-injective (sym eq)) ⟩
      inject+ n (F.zero {m})
    ≡⟨ refl ⟩
      F.zero
    ∎
    where open SetR
  inject+-split (suc m) n (F.suc x) y eq
    with split m n x | inspect (split m n) x
  inject+-split (suc m) n (F.suc x) F.zero () | inj₁ z | _
  inject+-split (suc m) n (F.suc x) (F.suc y) eq | inj₁ z | [ eq′ ] =
    begin⟨ setoid (Fin (suc m + n)) ⟩
      inject+ n (F.suc y)
    ≡⟨ PEq.cong (inject+ n) (sym (inj₁-injective eq)) ⟩
      inject+ n (F.suc z)
    ≡⟨ refl ⟩
      F.suc (inject+ n z)
    ≡⟨ PEq.cong F.suc (inject+-split m n x z eq′) ⟩
      F.suc x
    ∎
    where open SetR
  inject+-split (suc m) n (F.suc x) y () | inj₂ z | r

  raise-split : ∀ m n x y → split m n x ≡ inj₂ y → raise m y ≡ x
  raise-split zero n x y eq = sym (inj₂-injective eq)
  raise-split (suc m) n F.zero y ()
  raise-split (suc m) n (F.suc x) y eq
    with split m n x | inspect (split m n) x
  raise-split (suc m) n (F.suc x) y () | inj₁ z | _
  raise-split (suc m) n (F.suc x) y eq | inj₂ z | [ eq′ ] =
    PEq.cong F.suc $
    begin⟨ setoid (Fin (m + n)) ⟩
      raise m y
    ≡⟨ PEq.cong (raise m) (sym (inj₂-injective eq)) ⟩
      raise m z
    ≡⟨ raise-split m n x z eq′ ⟩
      x
    ∎
    where open SetR

  join-split : ∀ m n x → join m n (split m n x) ≡ x
  join-split zero n x = refl
  join-split (suc m) n F.zero = refl
  join-split (suc m) n (F.suc x) with split m n x | inspect (split m n) x
  join-split (suc m) n (F.suc x) | inj₁ y | [ eq ] =
    PEq.cong F.suc (inject+-split m n x y eq)
  join-split (suc m) n (F.suc x) | inj₂ y | [ eq ] =
    PEq.cong F.suc (raise-split m n x y eq)

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

  ∣_∣ : ∀ {n} → Subset n → Fin (suc n)
  ∣ V.[] ∣ = F.zero
  ∣ outside V.∷ p ∣ = inject₁ (∣ p ∣)
  ∣ inside V.∷ p ∣ = F.suc ∣ p ∣

  Fin↔Fin′ : ∀ {m n} {i : Fin m} → n ≡ toℕ i → Fin n ↔ Fin′ i
  Fin↔Fin′ = λ eq → record
    { to = →-to-⟶ (to eq)
    ; from = →-to-⟶ (from eq)
    ; inverse-of = record
      { left-inverse-of = from-to eq
      ; right-inverse-of = to-from eq
      }
    }
    where
    to : ∀ {m n} {i : Fin m} → n ≡ toℕ i → Fin n → Fin′ i
    to {i = F.zero} refl ()
    to {i = F.suc i} eq F.zero = F.zero
    to {i = F.suc i} refl (F.suc j) = F.suc (to refl j)

    from : ∀ {m n} {i : Fin m} → n ≡ toℕ i → Fin′ i → Fin n
    from {i = F.zero} eq ()
    from {i = F.suc i} refl F.zero = F.zero
    from {i = F.suc i} refl (F.suc j) = F.suc (from refl j)

    from-to : ∀ {m n} {i : Fin m} (eq : n ≡ toℕ i) j → from eq (to eq j) ≡ j
    from-to {i = F.zero} refl ()
    from-to {i = F.suc i} refl F.zero = refl
    from-to {i = F.suc i} refl (F.suc j) = PEq.cong F.suc (from-to refl j)

    to-from : ∀ {m n} {i : Fin m} (eq : n ≡ toℕ i) j → to eq (from eq j) ≡ j
    to-from {i = F.zero} eq ()
    to-from {i = F.suc i} refl F.zero = refl
    to-from {i = F.suc i} refl (F.suc j) = PEq.cong F.suc (to-from refl j)

  Fin′↔ : ∀ {m n} {i : Fin m} {j : Fin n} → toℕ i ≡ toℕ j → Fin′ i ↔ Fin′ j
  Fin′↔ {i = i} {j} eq =
    Fin′ i       ↔⟨ ER.sym (Fin↔Fin′ refl) ⟩
    Fin (toℕ i)  ≡⟨ PEq.cong Fin eq ⟩
    Fin (toℕ j)  ↔⟨ Fin↔Fin′ refl ⟩
    Fin′ j       ∎
    where
    module ER = EquationalReasoning; open ER

  fin-subset-fin′ : ∀ {n} (p : Subset n) → ∃ (_∈ p) ↔ Fin′ ∣ p ∣
  fin-subset-fin′ = λ p → record
    { to = →-to-⟶ (to p)
    ; from = →-to-⟶ (from p)
    ; inverse-of = record
      { left-inverse-of = from-to p
      ; right-inverse-of = to-from p
      }
    }
    where
    to : ∀ {n} (p : Subset n) → ∃ (_∈ p) → Fin′ ∣ p ∣
    to .(inside V.∷ _) (.F.zero , here) = F.zero
    to (outside V.∷ bs) (F.suc x , there elem) =
      Inverse.from (Fin′↔ (inject₁-lemma ∣ bs ∣)) ⟨$⟩ (to bs (x , elem))
    to (inside V.∷ bs) (F.suc x , there elem) = F.suc (to bs (x , elem))

    from : ∀ {n} (p : Subset n) → Fin′ ∣ p ∣ → ∃ (_∈ p)
    from V.[] ()
    from (outside V.∷ bs) i
      with from bs (Inverse.to (Fin′↔ (inject₁-lemma ∣ bs ∣)) ⟨$⟩ i)
    ... | _ , elem = _ , there elem
    from (inside V.∷ bs) F.zero = F.zero , here
    from (inside V.∷ bs) (F.suc i) with from bs i
    ... | _ , elem = _ , there elem

    from-to : ∀ {n} (p : Subset n) e → from p (to p e) ≡ e
    from-to .(inside V.∷ _) (.F.zero , here) = refl
    from-to (outside V.∷ bs) (F.suc i , there elem) with from-to bs (i , elem)
    ... | ih = PEq.cong (Prod.map F.suc there) $ begin
      from bs (toI ⟨$⟩ (fromI ⟨$⟩ to bs (i , elem)))
        ≡⟨ PEq.cong (from bs) (right-inverse-of (to bs (i , elem))) ⟩
      from bs (to bs (i , elem))
        ≡⟨ ih ⟩
      i , elem
        ∎
      where
      open ≡-Reasoning
      open Inverse (Fin′↔ (inject₁-lemma ∣ bs ∣))
        using (right-inverse-of)
        renaming (to to toI; from to fromI)
    from-to (inside V.∷ bs) (F.suc i , there elem) =
      PEq.cong (Prod.map F.suc there) (from-to bs (i , elem))

    to-from : ∀ {n} (p : Subset n) i → to p (from p i) ≡ i
    to-from V.[] ()
    to-from (outside V.∷ bs) i = begin
      fromI ⟨$⟩ to bs (from bs (toI ⟨$⟩ i))
        ≡⟨ Π.cong fromI (to-from bs (toI ⟨$⟩ i)) ⟩
      fromI ⟨$⟩ (toI ⟨$⟩ i)
        ≡⟨ left-inverse-of i ⟩
      i
        ∎
      where
      open ≡-Reasoning
      open Inverse (Fin′↔ (inject₁-lemma ∣ bs ∣))
        using (left-inverse-of)
        renaming (to to toI; from to fromI)
    to-from (inside V.∷ bs) F.zero = refl
    to-from (inside V.∷ bs) (F.suc i) = PEq.cong F.suc (to-from bs i)

  fin-subset-fin : ∀ {n} (p : Subset n) → ∃ (_∈ p) ↔ Fin (toℕ ∣ p ∣)
  fin-subset-fin = fin-subset-fin′

  take-after : ∀ {a} {A : Set a} {x : A} {xs : List A} → x Mem.∈ xs → List A
  take-after (here {xs = xs} px) = xs
  take-after (there elem) = take-after elem

  record Repeat {a} {A : Set a} (xs : List A) : Set a where
    constructor repeat
    field
      {x} : A
      first : x L∈ xs
      second : x L∈ take-after first

  Fin1-prop : (x y : Fin 1) → x ≡ y
  Fin1-prop Fin.zero Fin.zero = refl
  Fin1-prop Fin.zero (Fin.suc ())
  Fin1-prop (Fin.suc ()) y

  -- Proof-irrelevant version of ∃
  subset : ∀ {a b} {A : Set a} (B : A → Set b) → Setoid _ _
  subset {A = A} B = On.setoid (PEq.setoid A) (proj₁ {B = B})

  ⊥-prop : (x y : ⊥) → x ≡ y
  ⊥-prop ()

  Fin-remove :
    ∀ {n} (r : Fin (suc n)) → Inverse (subset λ x → r ≢ x) (setoid (Fin n))
  Fin-remove = λ r → record
    { to = record
      { _⟨$⟩_ = to r
      ; cong = λ { {x , xneq} {.x , yneq} refl →
                 to-neq-irrelevant r x xneq yneq }
      }
    ; from = →-to-⟶ (from r)
    ; inverse-of = record
      { left-inverse-of = from-to r
      ; right-inverse-of = to-from r
      }
    }
    module Fin-remove where
    to : ∀ {n} (r : Fin (suc n)) → ∃ (r ≢_) → Fin n
    to Fin.zero (Fin.zero , neq) = ⊥-elim (neq refl)
    to Fin.zero (Fin.suc x , neq) = x
    to {zero} (Fin.suc ()) (Fin.zero , neq)
    to {suc n} (Fin.suc r) (Fin.zero , neq) = Fin.zero
    to {zero} (Fin.suc ()) (Fin.suc x , neq)
    to {suc n} (Fin.suc r) (Fin.suc x , neq) =
      Fin.suc (to r (x , neq ∘ PEq.cong Fin.suc))

    to-neq-irrelevant :
      ∀ {n} (r : Fin (suc n)) (x : Fin (suc n)) (xneq yneq : r ≢ x) →
      to r (x , xneq) ≡ to r (x , yneq)
    to-neq-irrelevant Fin.zero Fin.zero xneq yneq = PEq.cong ⊥-elim (⊥-prop _ _)
    to-neq-irrelevant Fin.zero (Fin.suc x) xneq yneq = refl
    to-neq-irrelevant {zero} (Fin.suc ()) Fin.zero xneq yneq
    to-neq-irrelevant {suc n} (Fin.suc r) Fin.zero xneq yneq = refl
    to-neq-irrelevant {zero} (Fin.suc ()) (Fin.suc x) xneq yneq
    to-neq-irrelevant {suc n} (Fin.suc r) (Fin.suc x) xneq yneq =
      PEq.cong Fin.suc (to-neq-irrelevant r x (xneq ∘ PEq.cong Fin.suc)
                                              (yneq ∘ PEq.cong Fin.suc))

    from : ∀ {n} (r : Fin (suc n)) → Fin n → ∃ (r ≢_)
    from Fin.zero x = Fin.suc x , λ ()
    from (Fin.suc r) Fin.zero = Fin.zero , λ ()
    from (Fin.suc r) (Fin.suc x) with from r x
    ... | y , neq = Fin.suc y , neq ∘ FP.suc-injective

    from-to : ∀ {n} (r : Fin (suc n)) (xn : ∃ (r ≢_)) →
              proj₁ (from r (to r xn)) ≡ proj₁ xn
    from-to Fin.zero (Fin.zero , neq) = ⊥-elim (neq refl)
    from-to Fin.zero (Fin.suc x , neq) = refl
    from-to {zero} (Fin.suc ()) (Fin.zero , neq)
    from-to {suc n} (Fin.suc r) (Fin.zero , neq) = refl
    from-to {zero} (Fin.suc ()) (Fin.suc x , neq)
    from-to {suc n} (Fin.suc r) (Fin.suc x , neq) =
      PEq.cong Fin.suc (from-to r (x , neq ∘ PEq.cong Fin.suc))

    to-from : ∀ {n} (r : Fin (suc n)) (x : Fin n) → to r (from r x) ≡ x
    to-from Fin.zero x = refl
    to-from (Fin.suc r) Fin.zero = refl
    to-from {n} (Fin.suc r) (Fin.suc x) =
      PEq.cong Fin.suc $ begin⟨ setoid (Fin _) ⟩
      to r (proj₁ (from r x)
         , (proj₂ (from r x) ∘ FP.suc-injective) ∘ PEq.cong Fin.suc)
        ≡⟨ to-neq-irrelevant r (proj₁ (from r x)) _ _ ⟩
      to r (from r x)
        ≡⟨ to-from r x ⟩
      x
        ∎
      where open SetR

  Fin-remove-List :
    ∀ {n} (r : Fin (suc n)) →
    Inverse (subset (All (r ≢_))) (setoid (List (Fin n)))
  Fin-remove-List {n} r = record
    { to = record
      { _⟨$⟩_ = to
      ; cong = λ { {xs , xneqs} {.xs , yneqs} refl →
                 to-neqs-irrelevant xs xneqs yneqs } }
    ; from = →-to-⟶ from
    ; inverse-of = record
      { left-inverse-of = from-to
      ; right-inverse-of = to-from
      }
    }
    where
    open Inverse (Fin-remove r) using () renaming (to to toX; from to fromX)
    open Fin-remove
      using (to-neq-irrelevant)
      renaming (from-to to from-toX; to-from to to-fromX)
    to : ∃ (All (r ≢_)) → List (Fin n)
    to (List.[] , All.[]) = List.[]
    to (x List.∷ xs , neq All.∷ neqs) =
      (toX ⟨$⟩ (x , neq)) List.∷ to (xs , neqs)

    to-neqs-irrelevant :
      ∀ xs (xneqs yneqs : All (r ≢_) xs) →
      to (xs , xneqs) ≡ to (xs , yneqs)
    to-neqs-irrelevant List.[] All.[] All.[] = refl
    to-neqs-irrelevant (x List.∷ xs) (xneq All.∷ xneqs) (yneq All.∷ yneqs) =
      PEq.cong₂ List._∷_ (to-neq-irrelevant {n} r x xneq yneq)
                         (to-neqs-irrelevant xs xneqs yneqs)

    from : List (Fin n) → ∃ (All (r ≢_))
    from List.[] = List.[] , All.[]
    from (x List.∷ xs) with fromX ⟨$⟩ x | from xs
    ... | y , neq | ys , neqs = y List.∷ ys , neq All.∷ neqs

    from-to : ∀ xns → proj₁ (from (to xns)) ≡ proj₁ xns
    from-to (List.[] , All.[]) = refl
    from-to (x List.∷ xs , neq All.∷ neqs)
      with from-toX {n} r (x , neq) | from-to (xs , neqs)
    ... | eq | eqs = PEq.cong₂ List._∷_ eq eqs

    to-from : ∀ xs → to (from xs) ≡ xs
    to-from List.[] = refl
    to-from (x List.∷ xs) = PEq.cong₂ List._∷_ (to-fromX {n} r x) (to-from xs)

  Fin-remove-List-length :
    ∀ {n} (r : Fin (suc n)) (xns : ∃ (All (r ≢_))) →
    let open Inverse (Fin-remove-List r) in
    length (to ⟨$⟩ xns) ≡ length (proj₁ xns)
  Fin-remove-List-length r (List.[] , All.[]) = refl
  Fin-remove-List-length r (x List.∷ xs , neq All.∷ neqs) =
    PEq.cong suc (Fin-remove-List-length r (xs , neqs))

  module _ {n} (r : Fin (suc n)) where
    open Inverse (Fin-remove-List r)
      using ()
      renaming (to to tos; from to froms)
    open Inverse (Fin-remove r)

    ∈-unremove :
      (xn : ∃ (r ≢_)) (xns : ∃ (All (r ≢_))) →
      (to ⟨$⟩ xn) Mem.∈ (tos ⟨$⟩ xns) → proj₁ xn Mem.∈ proj₁ xns
    ∈-unremove (x , neq) (List.[] , All.[]) ()
    ∈-unremove (z , zneq) (x List.∷ xs , neq All.∷ neqs) (here px) =
      here $ begin⟨ setoid (Fin (suc n)) ⟩
      z                                     ≡⟨ PEq.sym
                                               (left-inverse-of (z , zneq)) ⟩
      proj₁ (from ⟨$⟩ (to ⟨$⟩ (z , zneq)))  ≡⟨ cong from px ⟩
      proj₁ (from ⟨$⟩ (to ⟨$⟩ (x , neq)))   ≡⟨ left-inverse-of (x , neq) ⟩
      x                                     ∎
      where open SetR
    ∈-unremove (z , zneq) (x List.∷ xs , neq All.∷ neqs) (there elem) =
      there (∈-unremove (z , zneq) (xs , neqs) elem)

  repeat-unremove :
    ∀ {n} (x : Fin (suc n)) (xns : ∃ (All (x ≢_))) →
    let open Inverse (Fin-remove-List x) in
    Repeat (to ⟨$⟩ xns) → Repeat (x List.∷ proj₁ xns)
  repeat-unremove r xns@(xs , neqs) (repeat {z} f s) = {!∈-unremove r ? xns!}
    where
    open Inverse (Fin-remove r)
    open Inverse (Fin-remove-List r)
      using () renaming (to to tos; from to froms)

  pigeon-holes :
    ∀ {n} (xs : List (Fin n)) → length xs ≡ suc n → Repeat xs
  pigeon-holes {zero} List.[] ()
  pigeon-holes {zero} (() List.∷ xs) eq
  pigeon-holes {suc n} List.[] ()
  pigeon-holes {suc n} (x List.∷ xs) eq with any (x ≟_) xs
  pigeon-holes {suc n} (x List.∷ xs) eq | yes p =
    record { first = here refl ; second = p }
  pigeon-holes {suc n} (x List.∷ xs) eq | no ¬p with pigeon-holes (to ⟨$⟩ (xs , neqs)) (PEq.trans (Fin-remove-List-length _ (xs , neqs)) (suc-injective eq))
    where
    open Inverse (Fin-remove-List x)

    suc-injective : ∀ {x y} → suc x ≡ suc y → x ≡ y
    suc-injective refl = refl

    neqs : All (x ≢_) xs
    neqs = Surjection.to ¬Any↠All¬ ⟨$⟩ ¬p
  ... | repeat f s = {!!}
    where
    open Inverse (Fin-remove-List x)

    suc-injective : ∀ {x y} → suc x ≡ suc y → x ≡ y
    suc-injective refl = refl

    neqs : All (x ≢_) xs
    neqs = Surjection.to ¬Any↠All¬ ⟨$⟩ ¬p
