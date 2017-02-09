open import Data.Product using (∃; _,_)
open import Relation.Binary using (Rel)
open import Relation.Unary using (Decidable)

module Computation.Properties.Decidable
  {st ℓ} {St : Set st} {R : Rel St ℓ}
  (R? : Decidable λ i → ∃ (R i)) (s : St) where

  open import Computation

  open import Data.Nat as ℕ using (ℕ; zero; suc; _+_; _≤_; ≤-pred; module ≤-Reasoning)
  open import Data.Nat.Properties.Simple using (+-right-identity)
  open import Star using (Star; ε; _◅_; _◅◅_; length)

  open import Relation.Nullary using (¬_; Dec; yes; no)

  dbn-lemma :
    ∀ (m : St → ℕ) max {i} → Star R s i →
    (∀ {j} (rs : Star R i j) → length rs + m j ≤ max) →
    StronglyNormalizing R i
  dbn-lemma m max {i} rs bound with R? i
  dbn-lemma m zero rs bound | yes (j , r) with bound (r ◅ ε)
  ... | ()
  dbn-lemma m (suc max) rs bound | yes (j , r) =
    later r (dbn-lemma m max (rs ◅◅ r ◅ ε) (λ ss → ≤-pred (bound (r ◅ ss))))
  dbn-lemma m max rs bound | no ¬p = now (λ r → ¬p (_ , r))

  decreasing-bound-norm :
    ∀ (m : St → ℕ) max → (∀ {j} (rs : Star R s j) → length rs + m j ≤ max) →
    StronglyNormalizing R s
  decreasing-bound-norm m max bound = dbn-lemma m max ε bound

  bound-norm : ∀ max → (∀ {j} (rs : Star R s j) → length rs ≤ max) →
               StronglyNormalizing R s
  bound-norm max bound = decreasing-bound-norm (λ _ → 0) max (λ rs → begin
    length rs + 0  ≡⟨ +-right-identity (length rs) ⟩
    length rs      ≤⟨ bound rs ⟩
    max            ∎)
    where open ≤-Reasoning
