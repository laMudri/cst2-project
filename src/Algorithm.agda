open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm {c n ℓ ℓ′} (K : Semiring c ℓ) (D : Decidable K)
                 (Q : Queue (Fin n) ℓ′) (G : Graph K n) where
  infix 4 _≟_ _≤?_
  _≟_ = D

  open Semiring K renaming (Carrier to C)
  open Queue Q renaming (Carrier to Qc)
  open import Semiring.Definitions K
  open import Semiring.Properties K

  open import Data.Bool using (Bool; false; true; T; if_then_else_)
  open import Data.Nat using (ℕ; zero; suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Data.Unit using (⊤; tt)
  open import Data.Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl)

  open import Function

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; inspect; [_]; Reveal_·_is_)
  open import Relation.Nullary using (Dec; yes; no)

  _≤?_ : ∀ a b → Dec (a ≤K b)
  a ≤? b = a + b ≟ a

  gsssd-loop : (d r : Vec C n) → Qc → Fin n → Vec C n
  gsssd-loop d r S s =
    case (∃ λ x → Reveal has-items · S is x) ∋
         (has-items S , inspect has-items S) of λ
    { (false , i) → d [ s ]≔ 1#
    ; (true , [ eq ]) →
      let q , S = dequeue S (PEq.subst T (PEq.sym eq) tt) in
      let r′ = lookup q r in
      let r = r [ q ]≔ 0# in
      let d , r , S =
           foldl (λ _ → Vec C n × Vec C n × Qc)
                 (λ { (d , r , S) q′ →
                 case lookup q′ d ≤? r′ * G q q′ of λ
                 { (yes p) → d , r , S
                 ; (no ¬p) →
                   let d = d [ q′ ]≔ (lookup q′ d + r′ * G q q′) in
                   let r = r [ q′ ]≔ (lookup q′ r + r′ * G q q′) in
                   d , r , (if contains q′ S then S else proj₁ (enqueue q′ S))
                 } })
                 (d , r , S) (allFin n)
      in
      {!gsssd-loop d r S s!}
    }

  -- Generic single-source shortest-distance
  gsssd : Fin n → Vec C n
  gsssd s = gsssd-loop d d S s
    where
    -- The initial state is
    -- 0 0 0 ... 0 1 0 ... 0 0,
    -- with the 1 occurring in position s.
    d-helper : ∀ {n} → Fin n → Vec C n
    d-helper zero = 1# ∷ replicate 0#
    d-helper (suc s′) = 0# ∷ d-helper s′

    d : Vec C n
    d = d-helper s

    S : Qc
    S = proj₁ (enqueue s empty)
