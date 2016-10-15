open import Algebra using (Semiring)

module Sum {c ℓ} (K : Semiring c ℓ) where
open Semiring K renaming (Carrier to C) hiding (zero)

open import Stream using (Stream; _∷_; take)
open import Data.List using (List; []; _∷_)
open import Data.Nat as ℕ using (ℕ; zero; suc)
open import Data.Nat.Properties.Simple using (+-suc; +-right-identity)
open import Data.Product using (∃; _×_; _,_)

import Relation.Binary.EqReasoning as EqReasoning
open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

open import Level renaming (zero to lzero; suc to lsuc)

∑ : List C → C
∑ [] = 0#
∑ (a ∷ as) = a + ∑ as

record ∑∞ (as : Stream C) (∑as : C) : Set (c ⊔ ℓ) where
  field
    N : ℕ
    converges : ∀ k → ∑ (take (k ℕ.+ N) as) ≈ ∑as

∑∞-is-partial-function : ∀ {as x y} → ∑∞ as x → ∑∞ as y → x ≈ y
∑∞-is-partial-function {as} {x} {y} px py =
  let (N , lx , ly) , eqx , eqy = equalise Nx Ny in
  begin
    x
  ≈⟨ sym (convergesx lx) ⟩
    ∑ (take (lx ℕ.+ Nx) as)
  ≡⟨ PEq.cong (λ n → ∑ (take n as)) eqx ⟩
    ∑ (take N as)
  ≡⟨ PEq.cong (λ n → ∑ (take n as)) (PEq.sym eqy) ⟩
    ∑ (take (ly ℕ.+ Ny) as)
  ≈⟨ convergesy ly ⟩
    y
  ∎
  --trans {!!} (convergesy ly)
  where
    open EqReasoning setoid
    open ∑∞ px renaming (N to Nx; converges to convergesx)
    open ∑∞ py renaming (N to Ny; converges to convergesy)

    equalise : (x y : ℕ) → ∃ λ { (z , z-x , z-y) → z-x ℕ.+ x ≡ z × z-y ℕ.+ y ≡ z }
    equalise zero zero = (zero , zero , zero) , PEq.refl , PEq.refl
    equalise zero (suc y) =
      (suc y , suc y , zero) , PEq.cong suc (+-right-identity y) , PEq.refl
    equalise (suc x) zero =
      (suc x , zero , suc x) , PEq.refl , PEq.cong suc (+-right-identity x)
    equalise (suc x) (suc y) with equalise x y
    ... | (z , z-x , z-y) , eqx , eqy =
      (suc z , z-x , z-y) , PEq.trans (+-suc z-x x) (PEq.cong suc eqx)
                            , PEq.trans (+-suc z-y y) (PEq.cong suc eqy)
