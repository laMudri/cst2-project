module Main where
  open import Algebra
    using ( Semiring; CommutativeSemiring; SemiringWithoutOne
          ; CommutativeSemiringWithoutOne)

  open import Category.Monad

  open import Data.Bool using (Bool; false; true; T)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties as FinP using ()
  open import Data.Maybe as Maybe using (Maybe; just; nothing)
  open import Data.Nat as ℕ using (ℕ; _⊓_; _+_; _≟_)
  open import Data.Nat.Properties
    using (commutativeSemiring; ⊔-⊓-0-commutativeSemiringWithoutOne)
  open import Data.Product using (Σ; _×_; _,_; proj₁; proj₂)
  open import Data.Unit using (⊤; tt)

  open import Function

  open import Queue as Q

  open import Relation.Binary using (Setoid; DecSetoid)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; module ≡-Reasoning; inspect; [_])
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  map₂ : ∀ {f} {A B C : Set f} → (A → B → C) → (Maybe A → Maybe B → Maybe C)
  map₂ f ma mb = ma >>= λ a → mb >>= λ b → return (f a b)
    where open RawMonad Maybe.monad

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
    where
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
  open import Semiring.Definitions K

  De : Decidable
  De (just x) (just y) with x ≟ y
  De (just x) (just y) | yes p = yes (just p)
  De (just x) (just y) | no ¬p = no (λ { (just x≈y) → ¬p x≈y })
  De (just x) nothing = no (λ ())
  De nothing (just y) = no (λ ())
  De nothing nothing = yes nothing

  open import Graph K

  {-
     1
   2/|
   / |
  0  |1
   \ |
   4\|
     2
  -}

  G : Graph 3
  G zero zero = nothing
  G zero (suc zero) = just 2
  G zero (suc (suc zero)) = just 4
  G zero (suc (suc (suc ())))
  G (suc zero) zero = just 2
  G (suc (suc zero)) zero = just 4
  G (suc (suc (suc ()))) zero
  G (suc zero) (suc zero) = nothing
  G (suc zero) (suc (suc j)) = just 1
  G (suc (suc i)) (suc zero) = just 1
  G (suc (suc i)) (suc (suc j)) = nothing

  Q = stack (FinP.decSetoid 3)
  open Queue Q

  open import Algorithm K De Q G zero

  {-# NON_TERMINATING #-}
  run : Alg-state → Alg-state
  run i with has-items (vertex-queue i) | inspect has-items (vertex-queue i)
  run i | false | _ = i
  run i | true | [ eq ] = run (do-step′ i (PEq.subst T (PEq.sym eq) tt))
