module Semiring.Instances where
  import Semiring.Definitions as D

  open import Algebra
    using ( Semiring; CommutativeSemiring; SemiringWithoutOne
          ; CommutativeSemiringWithoutOne)
  open import Algebra.FunctionProperties using (Op₂)

  open import Data.Nat as ℕ using (ℕ; zero; suc; _+_; _*_; _⊓_; _≟_)
  open import Data.Product using (∃; _×_; proj₁; proj₂; _,_)
  open import Data.Sum using (_⊎_; inj₁; inj₂)

  import Level as L

  open import Relation.Binary using (Setoid; Poset; TotalOrder; IsTotalOrder)
  open import Relation.Binary.On as On using ()
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; module ≡-Reasoning)
  open import Relation.Nullary using (¬_; Dec; yes; no)

  module Nat where
    open import Data.Maybe as Maybe
    open import Data.Nat.Properties
      using (commutativeSemiring; ⊔-⊓-0-commutativeSemiringWithoutOne)

    K : Semiring _ _
    K = record
      { Carrier = Maybe ℕ
      ; _≈_ = Maybe.Eq _≡_
      ; _+_ = _T⊓_
      ; _*_ = _T+_
      ; 0# = nothing
      ; 1# = just 0
      ; isSemiring = record
        { isSemiringWithoutAnnihilatingZero = record
          { +-isCommutativeMonoid = record
            { isSemigroup = record
              { isEquivalence = isEquivalence
              ; assoc = λ { (just x) (just y) (just z) → just (⊓-assoc x y z)
                          ; (just x) (just y) nothing → just PEq.refl
                          ; (just x) nothing (just z) → just PEq.refl
                          ; (just x) nothing nothing → just PEq.refl
                          ; nothing (just y) (just z) → just PEq.refl
                          ; nothing (just y) nothing → just PEq.refl
                          ; nothing nothing (just z) → just PEq.refl
                          ; nothing nothing nothing → nothing
                          }
              ; ∙-cong = λ { (just eqx) (just eqy) → just (⊓-cong eqx eqy)
                           ; (just eqx) nothing → just eqx
                           ; nothing (just eqy) → just eqy
                           ; nothing nothing → nothing
                           }
              }
            ; identityˡ = λ { (just x) → just PEq.refl ; nothing → nothing }
            ; comm = λ { (just x) (just y) → just (⊓-comm x y)
                       ; (just x) nothing → just PEq.refl
                       ; nothing (just y) → just PEq.refl
                       ; nothing nothing → nothing
                       }
            }
          ; *-isMonoid = record
            { isSemigroup = record
              { isEquivalence = isEquivalence
              ; assoc = λ { (just x) (just y) (just z) → just (+-assoc x y z)
                          ; (just x) (just y) nothing → nothing
                          ; (just x) nothing z → nothing
                          ; nothing y z → nothing
                          }
              ; ∙-cong = λ { (just eqx) (just eqy) → just (+-cong eqx eqy)
                           ; (just x≈y) nothing → nothing
                           ; nothing eqy → nothing
                           }
              }
            ; identity = (λ { (just x) → just (proj₁ +-identity x)
                            ; nothing → nothing })
                       , (λ { (just x) → just (proj₂ +-identity x)
                            ; nothing → nothing })
            }
          ; distrib = (λ { (just x) (just y) (just z) → just (distrib-l x y z)
                         ; (just x) (just y) nothing → just PEq.refl
                         ; (just x) nothing (just z) → just PEq.refl
                         ; (just x) nothing nothing → nothing
                         ; nothing y z → nothing
                         })
                    , (λ { (just x) (just y) (just z) → just (distrib-r x y z)
                         ; (just x) (just y) nothing → just PEq.refl
                         ; (just x) nothing (just z) → just PEq.refl
                         ; nothing (just y) (just z) → nothing
                         ; nothing (just y) nothing → nothing
                         ; nothing nothing (just z) → nothing
                         ; x nothing nothing → nothing
                         })
          }
        ; zero = (λ x → nothing) , rzero
        }
      }
      module K where
      open Setoid (Maybe.setoid (PEq.setoid ℕ))
      open CommutativeSemiringWithoutOne ⊔-⊓-0-commutativeSemiringWithoutOne
        using ()
        renaming ( *-isSemigroup to ⊓-isSemigroup; *-comm to ⊓-comm
                 ; *-assoc to ⊓-assoc; *-cong to ⊓-cong)
      open CommutativeSemiring commutativeSemiring
        using (+-isMonoid; +-identity; +-assoc; +-cong; +-comm)

      _T⊓_ _T+_ : Maybe ℕ → Maybe ℕ → Maybe ℕ
      just x T⊓ just y = just (x ⊓ y)
      just x T⊓ nothing = just x
      nothing T⊓ just y = just y
      nothing T⊓ nothing = nothing

      just x T+ just y = just (x + y)
      just x T+ nothing = nothing
      nothing T+ y = nothing

      rzero : ∀ x → Maybe.Eq _≡_ (x T+ nothing) nothing
      rzero (just x) = nothing
      rzero nothing = nothing

      distrib-l : ∀ x y z → x + y ⊓ z ≡ (x + y) ⊓ (x + z)
      distrib-l ℕ.zero y z = PEq.refl
      distrib-l (ℕ.suc x) y z = PEq.cong ℕ.suc (distrib-l x y z)

      open ≡-Reasoning

      distrib-r : ∀ x y z → y ⊓ z + x ≡ (y + x) ⊓ (z + x)
      distrib-r x y z = begin
        y ⊓ z + x          ≡⟨ +-comm (y ⊓ z) x ⟩
        x + y ⊓ z          ≡⟨ distrib-l x y z ⟩
        (x + y) ⊓ (x + z)  ≡⟨ ⊓-cong (+-comm x y) (+-comm x z) ⟩
        (y + x) ⊓ (z + x)  ∎
    open K using (_T⊓_; _T+_)

    open Semiring K hiding (zero)
    open import Semiring.Definitions K
    open import Sum K

    0-T⊓ : ∀ y → just 0 T⊓ y ≡ just 0
    0-T⊓ (just y) = PEq.refl
    0-T⊓ nothing = PEq.refl

    closed : _Closed 1
    closed = record
      { closed = λ a → record
        { closed = reflexive (0-T⊓ ((a T+ just 0) T⊓ nothing))
        }
      }

    De : Decidable
    De (just x) (just y) with x ≟ y
    De (just x) (just y) | yes p = yes (just p)
    De (just x) (just y) | no ¬p = no (λ { (just x≈y) → ¬p x≈y })
    De (just x) nothing = no (λ ())
    De nothing (just y) = no (λ ())
    De nothing nothing = yes nothing

  {-
  module KSemiring {c ℓ} (k : ℕ) (K : Semiring c ℓ) (TO : D.TotallyOrdered K)
                   (idem : D.Idempotent K)
                   where
    open Semiring K renaming (_+_ to _+K_; _*_ to _*K_)
    open import Semiring.Definitions K
    open import Semiring.Properties K
    open IsTotalOrder TO using (total; antisym)
      renaming (refl to ≤K-refl; trans to ≤K-trans; ≤-resp-≈ to ≤K-resp-≈)

    neg : Negative _≤K_
    neg = natural-order-negative idem

    open import Data.Nat.Properties.Simple
    open import Data.Vec hiding (take)
    open import Data.Vec.Equality using (module Equality)
    open module VEq = Equality setoid using () renaming (_≈_ to _≅_)

    open import Function

    open import Relation.Binary.EqReasoning as EqR using ()
    open import Relation.Unary using () renaming (_⊆_ to _⋐_)

    data All {a p} {A : Set a} (P : A → Set p)
             : ∀ {n} → Vec A n → Set p where
      [] : All P []
      _∷_ : ∀ {n x} {xs : Vec A n} (px : P x) (pxs : All P xs) → All P (x ∷ xs)

    data Sorted : ∀ {n} → Vec Carrier n → Set (c L.⊔ ℓ) where
      [] : Sorted []
      _∷_ : ∀ {n x} {xs : Vec Carrier n}
            (sx : All (x ≤K_) xs) (sxs : Sorted xs) → Sorted (x ∷ xs)

    All-map : ∀ {a p q} {A : Set a} {n} {P : A → Set p} {Q : A → Set q} →
              (P ⋐ Q) → (All P {n} ⋐ All Q)
    All-map f [] = []
    All-map f (px ∷ pxs) = f px ∷ All-map f pxs

    All-≤-expand :
      ∀ {n x y} {ys : Vec Carrier n} →
      x ≤K y → Sorted (y ∷ ys) → All (x ≤K_) (y ∷ ys)
    All-≤-expand {n} {x} {y} x≤y (sy ∷ sys) =
      x≤y ∷ All-map {P = y ≤K_} {x ≤K_} (λ y≤z → ≤K-trans x≤y y≤z) sy

    infixr 5 _∷′_
    _∷′_ : ∀ {n x y} {ys : Vec Carrier n} →
           x ≤K y → Sorted (y ∷ ys) → Sorted (x ∷ y ∷ ys)
    x≤y ∷′ sys = All-≤-expand x≤y sys ∷ sys

    take : ∀ {a} {A : Set a} m {n} → Vec A (m + n) → Vec A m
    take ℕ.zero xs = []
    take (suc m) (x ∷ xs) = x ∷ take m xs

    take-All :
      ∀ {a p} {A : Set a} {P : A → Set p} m {n} {xs : Vec A (m + n)} →
      All P xs → All P (take m xs)
    take-All ℕ.zero pxs = []
    take-All (suc m) (px ∷ pxs) = px ∷ take-All m pxs

    take-Sorted :
      ∀ m {n} {xs : Vec Carrier (m + n)} → Sorted xs → Sorted (take m xs)
    take-Sorted ℕ.zero sxs = []
    take-Sorted (suc m) (sx ∷ sxs) = take-All m sx ∷ take-Sorted m sxs

    data _and_sum-to_ : (x y z : ℕ) → Set where
      z+z : ℕ.zero and ℕ.zero sum-to ℕ.zero
      s+y : ∀ {x y z} → x and y sum-to z → suc x and y sum-to suc z
      x+s : ∀ {x y z} → x and y sum-to z → x and suc y sum-to suc z

    z+y : ∀ y → ℕ.zero and y sum-to y
    z+y ℕ.zero = z+z
    z+y (suc y) = x+s (z+y y)

    x+z : ∀ x → x and ℕ.zero sum-to x
    x+z ℕ.zero = z+z
    x+z (suc n) = s+y (x+z n)

    sum-to-reflect : ∀ {x y z} → x and y sum-to z → z ≡ x + y
    sum-to-reflect z+z = PEq.refl
    sum-to-reflect (s+y s) = PEq.cong suc (sum-to-reflect s)
    sum-to-reflect {x} {suc y} {suc z} (x+s s) = begin
      suc z      ≡⟨ PEq.cong suc (sum-to-reflect s) ⟩
      suc x + y  ≡⟨ PEq.sym (+-suc x y) ⟩
      x + suc y  ∎
      where open ≡-Reasoning

    merge′ : ∀ {m n} → Vec Carrier m → Vec Carrier n →
             ∃ λ o → m and n sum-to o × Vec Carrier o
    merge′ [] ys = _ , z+y _ , ys
    merge′ xs [] = _ , x+z _ , xs
    merge′ (x ∷ xs) (y ∷ ys) with total x y
    merge′ (x ∷ xs) (y ∷ ys) | inj₁ x≤y with merge′ xs (y ∷ ys)
    ... | o , s , zs = suc o , s+y s , x ∷ zs
    merge′ (x ∷ xs) (y ∷ ys) | inj₂ y≤x with merge′ (x ∷ xs) ys
    ... | o , s , zs = suc o , x+s s , y ∷ zs

    merge′-All :
      ∀ {p} {P : Carrier → Set p} {m n}
      {xs : Vec Carrier m} {ys : Vec Carrier n} →
      All P xs → All P ys → All P (proj₂ (proj₂ (merge′ xs ys)))
    merge′-All {xs = []} {ys} pxs pys = pys
    merge′-All {xs = x ∷ xs} {[]} pxs pys = pxs
    merge′-All {xs = x ∷ xs} {y ∷ ys} pxs pys with total x y
    merge′-All {xs = x ∷ xs} {y ∷ ys} (px ∷ pxs) pys | inj₁ x≤y =
      px ∷ merge′-All pxs pys
    merge′-All {xs = x ∷ xs} {y ∷ ys} pxs (py ∷ pys) | inj₂ y≤x =
      py ∷ merge′-All pxs pys

    merge′-Sorted :
      ∀ {m n} {xs : Vec Carrier m} {ys : Vec Carrier n}
      (sxs : Sorted xs) (sys : Sorted ys) →
      Sorted (proj₂ (proj₂ (merge′ xs ys)))
    merge′-Sorted {xs = []} {ys} sxs sys = sys
    merge′-Sorted {xs = x ∷ xs} {[]} sxs sys = sxs
    merge′-Sorted {xs = x ∷ xs} {ys = y ∷ ys} sxs sys
      with total x y
    merge′-Sorted {xs = x ∷ xs} {ys = y ∷ ys} (sx ∷ sxs) sys | inj₁ x≤y =
      merge′-All sx (All-≤-expand x≤y sys) ∷ merge′-Sorted sxs sys
    merge′-Sorted {xs = x ∷ xs} {ys = y ∷ ys} sxs (sy ∷ sys) | inj₂ y≤x =
      merge′-All (All-≤-expand y≤x sxs) sy ∷ merge′-Sorted sxs sys

    merge : ∀ {m n} → Vec Carrier m → Vec Carrier n → Vec Carrier (m + n)
    merge xs ys with merge′ xs ys
    ... | o , s , zs = PEq.subst (Vec Carrier) (sum-to-reflect s) zs

    merge′-merge :
      ∀ {p} (P : ∀ {o} → Vec Carrier o → Set p) {m n}
      (xs : Vec Carrier m) (ys : Vec Carrier n) →
      P (proj₂ (proj₂ (merge′ xs ys))) → P (merge xs ys)
    merge′-merge P xs ys p with merge′ xs ys | p
    ... | o , s , zs | p′ with sum-to-reflect s
    ...   | PEq.refl = p′

    merge-All :
      ∀ {p} {P : Carrier → Set p} {m n}
      {xs : Vec Carrier m} {ys : Vec Carrier n} →
      All P xs → All P ys → All P (merge xs ys)
    merge-All {P = P} {xs = xs} {ys} pxs pys =
      merge′-merge (All P) xs ys (merge′-All pxs pys)

    merge-Sorted :
      ∀ {m n} {xs : Vec Carrier m} {ys : Vec Carrier n}
      (sxs : Sorted xs) (sys : Sorted ys) → Sorted (merge xs ys)
    merge-Sorted {xs = xs} {ys} sxs sys =
      merge′-merge Sorted xs ys (merge′-Sorted sxs sys)

    infixl 4 _<$>_ _<*>_
    _<$>_ = map
    _<*>_ = _⊛*_

    insert : ∀ {n} → Carrier → Vec Carrier n → Vec Carrier (suc n)
    insert x [] = x ∷ []
    insert x (y ∷ ys) with total x y
    ... | inj₁ x≤y = x ∷ y ∷ ys
    ... | inj₂ y≤x = y ∷ insert x ys

    sort : ∀ {n} → Vec Carrier n → Vec Carrier n
    sort [] = []
    sort (x ∷ xs) = insert x (sort xs)

    insert-All :
      ∀ {p} {P : Carrier → Set p} {n} {x : Carrier} {ys : Vec Carrier n} →
      P x → All P ys → All P (insert x ys)
    insert-All {ys = []} px pys = px ∷ []
    insert-All {x = x} {y ∷ ys} px pys with total x y
    insert-All {ys = y ∷ ys} px pys | inj₁ x≤y = px ∷ pys
    insert-All {ys = y ∷ ys} px (py ∷ pys) | inj₂ y≤x = py ∷ insert-All px pys

    insert-Sorted : ∀ {n} x {ys : Vec Carrier n} →
                    Sorted ys → Sorted (insert x ys)
    insert-Sorted x [] = [] ∷ []
    insert-Sorted x {y ∷ ys} (sy ∷ sys) with total x y
    ... | inj₁ x≤y = x≤y ∷′ sy ∷ sys
    ... | inj₂ y≤x = insert-All y≤x sy ∷ insert-Sorted x sys

    sort-Sorted : ∀ {n} (xs : Vec Carrier n) → Sorted (sort xs)
    sort-Sorted [] = []
    sort-Sorted (x ∷ xs) = insert-Sorted x (sort-Sorted xs)

    replicate-All : ∀ {a p} {A : Set a} {P : A → Set p} {n} (x : A) →
                    P x → All P (replicate {n = n} x)
    replicate-All {n = ℕ.zero} x px = []
    replicate-All {n = suc n} x px = px ∷ replicate-All x px

    replicate-Sorted : ∀ {n} x → Sorted (replicate {n = n} x)
    replicate-Sorted {ℕ.zero} x = []
    replicate-Sorted {suc n} x = replicate-All x ≤K-refl ∷ replicate-Sorted x

    -- Algebraic properties

    merge′-right-identity : ∀ {m} xs → proj₂ (proj₂ (merge′ {m = m} xs [])) ≅ xs
    merge′-right-identity [] = VEq.[]-cong
    merge′-right-identity (x ∷ xs) = VEq.refl _

    {-
    merge′-headₗ :
      ∀ {m n xs ys z} → All (z ≤K_) {m} xs → All (z ≤K_) {n} ys →
      proj₂ (proj₂ (merge′ (z ∷ xs) ys)) ≅ z ∷ proj₂ (proj₂ (merge′ xs ys))
    merge′-headₗ z≤xs [] = refl VEq.∷-cong VEq.sym (merge′-right-identity _)
    merge′-headₗ {ys = y ∷ ys} {z} z≤xs (z≤y ∷ z≤ys) with total z y
    merge′-headₗ {_} {_} {_} {y ∷ ys} {z} z≤xs (z≤y ∷ z≤ys) | inj₁ _ = VEq.refl _
    merge′-headₗ {_} {_} {xs} {y ∷ ys} {z} z≤xs (z≤y ∷ z≤ys) | inj₂ y≤z = antisym y≤z z≤y VEq.∷-cong {!!}
      where
      lemma0 : proj₂ (proj₂ (merge′ (z ∷ xs) ys))
               ≅ z ∷ proj₂ (proj₂ (merge′ xs ys))
      lemma0 = merge′-headₗ z≤xs z≤ys

      lemma1 : y ∷ proj₂ (proj₂ (merge′ xs ys))
               ≅ proj₂ (proj₂ (merge′ xs (y ∷ ys)))
      lemma1 = {!!}
    -}
    merge′-head :
      ∀ {m n xs ys z} → All (z ≤K_) {m} xs → All (z ≤K_) {n} ys →
      proj₂ (proj₂ (merge′ (z ∷ xs) ys)) ≅ z ∷ proj₂ (proj₂ (merge′ xs ys)) ×
      proj₂ (proj₂ (merge′ xs (z ∷ ys))) ≅ z ∷ proj₂ (proj₂ (merge′ xs ys))
    merge′-head [] [] = VEq.refl _ , VEq.refl _
    merge′-head {ys = y ∷ ys} {z} [] (z≤y ∷ z≤ys) with VEq.refl (z ∷ y ∷ ys)
    ... | r with total z y
    ... | inj₁ _ = VEq.refl _ , r
    ... | inj₂ y≤z =
      antisym y≤z z≤y VEq.∷-cong (proj₁ (merge′-head [] z≤ys) ⟨ VEq.trans ⟩
                                  (antisym z≤y y≤z VEq.∷-cong VEq.refl ys))
      , r
    merge′-head {xs = x ∷ xs} {z = z} (z≤x ∷ z≤xs) [] with VEq.refl (z ∷ x ∷ xs)
    ... | l with total x z
    ... | inj₁ x≤z =
      l ,
      antisym x≤z z≤x VEq.∷-cong
      (proj₂ (merge′-head z≤xs []) ⟨ VEq.trans ⟩
       antisym z≤x x≤z VEq.∷-cong merge′-right-identity xs)
    ... | inj₂ _ = l , VEq.refl _
    merge′-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys)
      with total z y | total x z
    merge′-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _   | inj₁ x≤z with total x y
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₁ x≤z | inj₁ x≤y = VEq.refl _ , antisym x≤z z≤x VEq.∷-cong (proj₂ (merge′-head z≤xs (z≤y ∷ z≤ys)) ⟨ VEq.trans ⟩ antisym z≤x x≤z VEq.∷-cong VEq.refl _)
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₁ x≤z | inj₂ y≤x = VEq.refl _ , antisym x≤z z≤x VEq.∷-cong (proj₂ (merge′-head z≤xs (z≤y ∷ z≤ys)) ⟨ VEq.trans ⟩ antisym z≤y y≤z VEq.∷-cong (proj₂ (merge′-head y≤xs y≤ys) ⟨ VEq.trans ⟩ antisym y≤x x≤y VEq.∷-cong VEq.refl _ ⟨ VEq.trans ⟩ VEq.sym (proj₁ (merge′-head x≤xs x≤ys))))
      where
      y≤z = ≤K-trans y≤x x≤z
      x≤y = ≤K-trans x≤z z≤y
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤xs
      y≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤ys
      x≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤xs
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤ys
    merge′-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _   | inj₂ _   = VEq.refl _ , VEq.refl _
    merge′-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₁ x≤z with total x y
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₁ x≤z | inj₁ x≤y = antisym y≤z z≤y VEq.∷-cong (proj₁ (merge′-head (z≤x ∷ z≤xs) z≤ys) ⟨ VEq.trans ⟩ antisym z≤x x≤z VEq.∷-cong (proj₁ (merge′-head x≤xs x≤ys) ⟨ VEq.trans ⟩ antisym x≤y y≤x VEq.∷-cong VEq.refl _ ⟨ VEq.trans ⟩ VEq.sym (proj₂ (merge′-head y≤xs y≤ys)))) , antisym x≤z z≤x VEq.∷-cong (proj₂ (merge′-head z≤xs (z≤y ∷ z≤ys)) ⟨ VEq.trans ⟩ antisym z≤x x≤z VEq.∷-cong VEq.refl _)
      where
      y≤x = ≤K-trans y≤z z≤x
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤xs
      y≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤ys
      x≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤xs
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤ys
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₁ x≤z | inj₂ y≤x = antisym y≤z z≤y VEq.∷-cong (proj₁ (merge′-head (z≤x ∷ z≤xs) z≤ys) ⟨ VEq.trans ⟩ antisym z≤y y≤z VEq.∷-cong VEq.refl _) , antisym x≤z z≤x VEq.∷-cong (proj₂ (merge′-head z≤xs (z≤y ∷ z≤ys)) ⟨ VEq.trans ⟩ antisym z≤y y≤z VEq.∷-cong (proj₂ (merge′-head y≤xs y≤ys) ⟨ VEq.trans ⟩ antisym y≤x x≤y VEq.∷-cong VEq.refl _ ⟨ VEq.trans ⟩ VEq.sym (proj₁ (merge′-head x≤xs x≤ys))))
      where
      x≤y = ≤K-trans x≤z z≤y
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤xs
      y≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤ys
      x≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤xs
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤ys
    merge′-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ with total x y
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ | inj₁ x≤y = antisym y≤z z≤y VEq.∷-cong (proj₁ (merge′-head (z≤x ∷ z≤xs) z≤ys) ⟨ VEq.trans ⟩ antisym z≤x x≤z VEq.∷-cong (proj₁ (merge′-head x≤xs x≤ys) ⟨ VEq.trans ⟩ antisym x≤y y≤x VEq.∷-cong VEq.refl _ ⟨ VEq.trans ⟩ VEq.sym (proj₂ (merge′-head y≤xs y≤ys)))) , VEq.refl _
      where
      x≤z = ≤K-trans x≤y y≤z
      y≤x = ≤K-trans y≤z z≤x
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤xs
      y≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤y y≤z)) z≤ys
      x≤xs = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤xs
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym z≤x x≤z)) z≤ys
    merge′-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ | inj₂ y≤x = antisym y≤z z≤y VEq.∷-cong (proj₁ (merge′-head (z≤x ∷ z≤xs) z≤ys) ⟨ VEq.trans ⟩ antisym z≤y y≤z VEq.∷-cong VEq.refl _) , VEq.refl _

    {-
    merge′-swap-head :
      ∀ {m n xs ys z} → All (z ≤K_) {m} xs → All (z ≤K_) {n} ys →
      proj₂ (proj₂ (merge′ (z ∷ xs) ys)) ≅ proj₂ (proj₂ (merge′ xs (z ∷ ys)))
    merge′-swap-head [] [] = VEq.refl _
    merge′-swap-head {ys = y ∷ ys} {z = z} [] (z≤y ∷ z≤ys) with total z y
    ... | inj₁ _ = VEq.refl _
    ... | inj₂ y≤z =
      antisym y≤z z≤y
      VEq.∷-cong (merge′-swap-head [] z≤ys ⟨ VEq.trans ⟩
                  antisym z≤y y≤z VEq.∷-cong VEq.refl ys)
    merge′-swap-head {xs = x ∷ xs} {z = z} (z≤x ∷ z≤xs) [] with total x z
    ... | inj₁ x≤z =
      antisym z≤x x≤z
      VEq.∷-cong (antisym x≤z z≤x VEq.∷-cong VEq.refl xs ⟨ VEq.trans ⟩
                  merge′-swap-head z≤xs [])
    ... | inj₂ _ = VEq.refl _
    merge′-swap-head {xs = x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) with total z y | total x z
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₁ x≤z with total x y
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₁ x≤z | inj₁ x≤y = antisym z≤x x≤z VEq.∷-cong {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₁ x≤z | inj₂ y≤x = {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₂ _ with total x y
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₂ _ | inj₁ x≤y = {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₁ _ | inj₂ _ | inj₂ y≤x = {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₁ x≤z = {!!} VEq.∷-cong {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ with total x y
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ | inj₁ x≤y = {!!}
    merge′-swap-head {_} {_} {x ∷ xs} {y ∷ ys} {z} (z≤x ∷ z≤xs) (z≤y ∷ z≤ys) | inj₂ y≤z | inj₂ _ | inj₂ y≤x = {!!}
    -}

    {-
    merge′-comm : ∀ {m n} (xs : Vec Carrier m) (ys : Vec Carrier n) →
                  proj₂ (proj₂ (merge′ xs ys)) ≅ proj₂ (proj₂ (merge′ ys xs))
    merge′-comm [] [] = VEq.[]-cong
    merge′-comm [] (y ∷ ys) = refl VEq.∷-cong VEq.refl ys
    merge′-comm (x ∷ xs) [] = refl VEq.∷-cong VEq.refl xs
    merge′-comm (x ∷ xs) (y ∷ ys) with total x y | total y x
    merge′-comm (x ∷ xs) (y ∷ ys) | inj₁ x≤y | inj₁ y≤x =
      x≈y VEq.∷-cong (merge′-comm xs (y ∷ ys) ⟨ VEq.trans ⟩
                      {!? ⟨ VEq.trans ⟩
                      ?!})
      where
      x≈y = antisym x≤y y≤x
    merge′-comm (x ∷ xs) (y ∷ ys) | inj₁ _ | inj₂ _ =
      refl VEq.∷-cong merge′-comm xs (y ∷ ys)
    merge′-comm (x ∷ xs) (y ∷ ys) | inj₂ _ | inj₁ _ =
      refl VEq.∷-cong merge′-comm (x ∷ xs) ys
    merge′-comm (x ∷ xs) (y ∷ ys) | inj₂ y≤x | inj₂ x≤y =
      antisym y≤x x≤y VEq.∷-cong (merge′-comm (x ∷ xs) ys ⟨ VEq.trans ⟩
                                  {!!})
    -}

    merge′-comm : ∀ {m n xs ys} → Sorted {m} xs → Sorted {n} ys →
                  proj₂ (proj₂ (merge′ xs ys)) ≅ proj₂ (proj₂ (merge′ ys xs))
    merge′-comm [] [] = VEq.[]-cong
    merge′-comm [] (sx ∷ sys) = VEq.refl _
    merge′-comm (sx ∷ sxs) [] = VEq.refl _
    merge′-comm {xs = x ∷ xs} {y ∷ ys} (sx ∷ sxs) (sy ∷ sys) with total x y | total y x
    merge′-comm {_} {_} {x ∷ xs} {y ∷ ys} (sx ∷ sxs) (sy ∷ sys) | inj₁ x≤y | inj₁ y≤x = antisym x≤y y≤x VEq.∷-cong (proj₂ (merge′-head y≤xs sy) ⟨ VEq.trans ⟩ antisym y≤x x≤y VEq.∷-cong merge′-comm sxs sys ⟨ VEq.trans ⟩ VEq.sym (proj₂ (merge′-head x≤ys sx)))
      where
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym x≤y y≤x)) sx
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym y≤x x≤y)) sy
    merge′-comm {_} {_} {x ∷ xs} {y ∷ ys} (sx ∷ sxs) (sy ∷ sys) | inj₁ x≤y | inj₂ _ = refl VEq.∷-cong merge′-comm sxs (sy ∷ sys)
    merge′-comm {_} {_} {x ∷ xs} {y ∷ ys} (sx ∷ sxs) (sy ∷ sys) | inj₂ y≤x | inj₁ _ = refl VEq.∷-cong merge′-comm (sx ∷ sxs) sys
    merge′-comm {_} {_} {x ∷ xs} {y ∷ ys} (sx ∷ sxs) (sy ∷ sys) | inj₂ y≤x | inj₂ x≤y = antisym y≤x x≤y VEq.∷-cong (proj₁ (merge′-head sx x≤ys) ⟨ VEq.trans ⟩ antisym x≤y y≤x VEq.∷-cong merge′-comm sxs sys ⟨ VEq.trans ⟩ VEq.sym (proj₁ (merge′-head sy y≤xs)))
      where
      y≤xs = All-map (proj₂ ≤K-resp-≈ (antisym x≤y y≤x)) sx
      x≤ys = All-map (proj₂ ≤K-resp-≈ (antisym y≤x x≤y)) sy

    merge-comm : ∀ {m n xs ys} → Sorted {m} xs → Sorted {n} ys →
                 merge xs ys ≅ merge ys xs
    merge-comm {xs = xs} {ys} sxs sys =
      merge′-merge (λ a → a ≅ merge ys xs) xs ys $
      merge′-merge (λ b → proj₂ (proj₂ (merge′ xs ys)) ≅ b) ys xs $
      merge′-comm sxs sys

    -- The semiring

    add : ∀ m {n} → ∃ (Sorted {m}) → ∃ (Sorted {n}) → ∃ (Sorted {m})
    add m (xs , sxs) (ys , sys) =
      take m (merge xs ys) , take-Sorted m (merge-Sorted sxs sys)

    add′ : ∀ m {n} → ∃ (Sorted {m}) → ∃ (Sorted {n}) → ∃ (Sorted {m})
    add′ m (xs , sxs) (ys , sys) with merge′ xs ys | merge′-Sorted sxs sys
    ... | o , s , zs | szs with sum-to-reflect s
    add′ m (xs , sxs) (ys , sys) | .(m + _) , s , zs | szs | PEq.refl =
      take m zs , take-Sorted m szs

    add′-right-identity :
      ∀ m n {xs} (sxs : Sorted {m} xs) →
      proj₁ (add′ m {n} (xs , sxs) (replicate 0# , replicate-Sorted 0#)) ≅ xs
    add′-right-identity m ℕ.zero {xs} sxs = {!!}
    add′-right-identity m (suc n) {xs} sxs = {!!}
    --add′-right-identity .0 n {.[]} [] with sum-to-reflect (z+y n)
    --... | PEq.refl = VEq.[]-cong
    --add′-right-identity (suc m) n {x ∷ xs} (sx ∷ sxs) with merge′ {n = n} (x ∷ xs) (replicate 0#)
    --... | a = {!!}

    K′ : Semiring (c L.⊔ ℓ) (c L.⊔ ℓ)
    K′ = record
      { Carrier = ∃ λ xs → Sorted {suc k} xs
      ; _≈_ = (λ xs ys → xs ≅ ys) on proj₁
      ; _+_ = _+′_
      ; _*_ = _*′_
      ; 0# = 0#′
      ; 1# = 1# ∷ replicate 0# , replicate-All 0# neg ∷ replicate-Sorted 0#
      ; isSemiring = record
        { isSemiringWithoutAnnihilatingZero = record
          { +-isCommutativeMonoid = record
            { isSemigroup = record
              { isEquivalence = isEquiv
              ; assoc = {!!}
              ; ∙-cong = {!!}
              }
            ; identityˡ = λ { (xs , sxs) → {!!} }
            ; comm = {!!}
            }
          ; *-isMonoid = record
            { isSemigroup = record
              { isEquivalence = isEquiv
              ; assoc = {!!}
              ; ∙-cong = {!!}
              }
            ; identity = {!!}
            }
          ; distrib = {!!}
          }
        ; zero = {!!}
        }
      }
      where
      _+′_ : ∀ {m} → Op₂ (∃ (Sorted {suc m}))
      _+′_ {m} (xs , sxs) (ys , sys) =
        take (suc m) (merge xs ys)
        , take-Sorted (suc m) (merge-Sorted sxs sys)

      _*′_ : Op₂ (∃ Sorted)
      (xs , sxs) *′ (ys , sys) =
        take (suc k) (sort (_*K_ <$> xs <*> ys))
        , take-Sorted (suc k) (sort-Sorted (_*K_ <$> xs <*> ys))

      0#′ : ∀ {m} → ∃ (Sorted {m})
      0#′ = replicate 0# , replicate-Sorted 0#

      isEquiv = On.isEquivalence proj₁ (record { refl = VEq.refl _
                                               ; sym = VEq.sym
                                               ; trans = VEq.trans
                                               })

      +′-identityˡ : ∀ {m} xs (sxs : Sorted {suc m} xs) →
                     proj₁ (0#′ +′ (xs , sxs)) ≅ xs
      +′-identityˡ {ℕ.zero} xs sxs with merge′ (0# ∷ []) xs | merge′-Sorted {xs = 0# ∷ []} ([] ∷ []) sxs
      ... | o , s , zs | szs with sum-to-reflect s
      +′-identityˡ {ℕ.zero} (x ∷ .[]) (sx ∷ []) | .2 , s , z ∷ z′ ∷ [] | ((z≤z′ ∷ sz) ∷ szs) | PEq.refl = {!!}
      +′-identityˡ {suc m} xs sxs = {!!}
      {-
      +′-identityˡ {.0} (x ∷ .[]) (sx ∷ []) with total 0# x
      +′-identityˡ {_} (x ∷ .[]) (sx ∷ []) | inj₁ 0≤x =
        (antisym 0≤x (≤K0 idem x)) VEq.∷-cong VEq.[]-cong
      +′-identityˡ {_} (x ∷ .[]) (sx ∷ []) | inj₂ _ = VEq.refl _
      +′-identityˡ {suc m} (x ∷ x′ ∷ xs) (sx ∷ sx′ ∷ sxs) with total 0# x
      +′-identityˡ {suc m} (x ∷ x′ ∷ xs) (sx ∷ sx′ ∷ sxs) | inj₁ 0≤x = {!!}
      +′-identityˡ {suc m} (x ∷ x′ ∷ xs) (sx ∷ sx′ ∷ sxs) | inj₂ _ with total 0# x′
      +′-identityˡ {suc m} (x ∷ x′ ∷ xs) (sx ∷ sx′ ∷ sxs) | inj₂ _ | inj₁ 0≤x′ = {!λ xs ys → (proj₂ (proj₂ (merge′ xs ys)))!}
      +′-identityˡ {suc m} (x ∷ x′ ∷ xs) (sx ∷ sx′ ∷ sxs) | inj₂ _ | inj₂ _ = {!? VEq.∷-cong ?!}
      -}

      {-
      *′-assoc :
        ∀ {m n o} {xs : Vec Carrier m} {ys : Vec Carrier n} {zs : Vec Carrier o}
        (sxs : Sorted xs) (sys : Sorted ys) (szs : Sorted zs) →
        proj₁ (((xs , sxs) *′ (ys , sys)) *′ (zs , szs))
          ≡ proj₁ ((xs , sxs) *′ ((ys , sys) *′ (zs , szs)))
      *′-assoc = ?
      -}
  -}
