open import Semiring as K
open import Queue as Q

module Algorithm {c ℓ ℓ′} (K : Semiring c ℓ) (Q : Queue (Semiring.Carrier K) ℓ′) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Graph

  open import Data.Bool using (Bool; false; true; T)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Nat using (ℕ; zero; suc)
  open import Data.Product using (∃; _,_; proj₁; proj₂)
  open import Data.Unit using (⊤; tt)
  open import Data.Vec using (Vec; []; _∷_; lookup; replicate; _[_]≔_)

  open import Function

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; inspect; [_]; Reveal_·_is_)

  gsssd-loop :
    ∀ {n ℓ} (Q : Queue (Fin n) ℓ) →
    let open Queue Q renaming (Carrier to Qc) in
    (d r : Vec C n) → Qc → Graph K n → Fin n → Vec C n
  gsssd-loop {n} Q d r S G s =
    let open Queue Q in
    case (∃ λ x → Reveal has-items · S is x) ∋ (has-items S , inspect has-items S) of λ
    { (false , i) → d [ s ]≔ 1#
    ; (true , [ eq ]) →
      let q , d = dequeue S (PEq.subst T (PEq.sym eq) tt) in
      let r′ = lookup q r in
      {!let r = r [ q ]≔ 0# in
      ?!}
    }

  gsssd : ∀ {n ℓ} → Queue (Fin n) ℓ → Graph K n → Fin n → C
  gsssd {n} Q G s = lookup s (gsssd-loop Q d d S G s)
    where
    open Queue Q renaming (Carrier to Qc)
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
