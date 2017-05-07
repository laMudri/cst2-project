module Main where
  open import Algebra
    using ( Semiring; CommutativeSemiring; SemiringWithoutOne
          ; CommutativeSemiringWithoutOne)

  open import Category.Monad

  open import Coinduction

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

  open import Semiring.Instances using (module Nat)
  open Nat
  open K using (_T⊓_; _T+_)

  open Semiring K hiding (zero)
  open import Semiring.Definitions K
  open import Sum K

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

  {-
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
  -}
  open import TestData

  open import Graph.Definitions {K = K} G

  closedOnG : 1 ClosedOnG
  closedOnG c = _Closed.closed closed (path-weight c)

  Q = stack (FinP.decSetoid 50)
  open QueueDiscipline Q

  open import Algorithm K De Q G zero
  --open import Algorithm.Theorem1 K De Q G zero closedOnG

  {-
  {-# NON_TERMINATING #-}
  run : Alg-state → Alg-state
  run i with Has-items? (vertex-queue i)
  run i | yes hi = run (do-step i hi)
  run i | no _ = i
  -}

  open import Arguments
  open import IO
  open import IO.Primitive as Prim using ()
  open import Computation
  open import Data.List using (List; []; _∷_; length)
  open import Data.Nat.Show as ℕS using ()
  open import Data.String hiding (show)
  open import Data.Vec hiding (_++_; toList)

  show : ∀ {n} → Vec (Maybe ℕ) n → String
  show [] = ""
  show (just x ∷ xs) = ℕS.show x ++ "\n" ++ show xs
  show (nothing ∷ xs) = "∞\n" ++ show xs

  {-# NON_TERMINATING #-}
  main : Prim.IO ⊤
  main = run $
    ♯ getArgs IO.>>= λ
    { [] → ♯ putStrLn "Not enough arguments."
    ; (x ∷ xs) →
      --♯ putStr (show (Alg-state-abbrev.d (σ (length (toList x)) I₀)))
      ♯ putStr (show (Alg-state-abbrev.d (σ 10000 I₀)))
    }
