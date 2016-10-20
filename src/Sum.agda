open import Algebra using (Semiring)

module Sum {c ℓ} (K : Semiring c ℓ) where
  open Semiring K renaming (Carrier to C; zero to *-0#)
  open import Algebra.Operations K using (_^_)

  open import Algebra using (Monoid)

  open import Coinduction

  open import Data.BoundedVec.Inefficient using (toList)
  open import Data.Colist
    using (Colist; []; _∷_) renaming (take to take-BoundedVec)
  open import Data.List using (List; []; _∷_; _++_; [_]; monoid)
  open import Data.Nat as ℕ using (ℕ; zero; suc; _≤″_)
  open import Data.Nat.Properties.Simple using (+-suc; +-right-identity)
  open import Data.Nat.Properties using (s≤′s)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)

  open import Function

  open import Level renaming (zero to lzero; suc to lsuc)

  import Relation.Binary.EqReasoning as EqReasoning
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)

  ∑ : List C → C
  ∑ [] = 0#
  ∑ (a ∷ as) = a + ∑ as

  take : ∀ {a} {A : Set a} (n : ℕ) → Colist A → List A
  take n = toList ∘ take-BoundedVec n

  record ∑∞ (as : Colist C) (∑as : C) : Set (c ⊔ ℓ) where
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
    where
      open EqReasoning setoid
      open ∑∞ px renaming (N to Nx; converges to convergesx)
      open ∑∞ py renaming (N to Ny; converges to convergesy)

      equalise :
        (x y : ℕ) → ∃ λ { (z , z-x , z-y) → z-x ℕ.+ x ≡ z × z-y ℕ.+ y ≡ z }
      equalise zero zero = (zero , zero , zero) , PEq.refl , PEq.refl
      equalise zero (suc y) =
        (suc y , suc y , zero) , PEq.cong suc (+-right-identity y) , PEq.refl
      equalise (suc x) zero =
        (suc x , zero , suc x) , PEq.refl , PEq.cong suc (+-right-identity x)
      equalise (suc x) (suc y) with equalise x y
      ... | (z , z-x , z-y) , eqx , eqy =
        (suc z , z-x , z-y) , PEq.trans (+-suc z-x x) (PEq.cong suc eqx)
                              , PEq.trans (+-suc z-y y) (PEq.cong suc eqy)

  tabulate-from : ∀ {a} {A : Set a} → (from length : ℕ) → (ℕ → A) → List A
  tabulate-from from zero f = []
  tabulate-from from (suc length) f = f from ∷ tabulate-from (suc from) length f

  tabulate : ∀ {a} {A : Set a} → ℕ → (ℕ → A) → List A
  tabulate = tabulate-from zero

  tabulate∞ : ∀ {a} {A : Set a} → (ℕ → A) → Colist A
  tabulate∞ {A = A} f = go zero
    where
    go : ℕ → Colist A
    go n = f n ∷ ♯ go (suc n)

  -- geo-∑ k a = ∑_{n=0}^{k-1} aⁿ
  geo-∑ : ℕ → C → C
  geo-∑ k a = ∑ (tabulate k (λ n → a ^ n))

  geo-∑∞ : C → C → Set (c ⊔ ℓ)
  geo-∑∞ a = ∑∞ (tabulate∞ (λ n → a ^ n))

  tabulate-from-++ :
    ∀ {a} {A : Set a} j k l (f : ℕ → A) →
    tabulate-from j (k ℕ.+ l) f ≡
      tabulate-from j k f ++ tabulate-from (j ℕ.+ k) l f
  tabulate-from-++ j zero l f =
    PEq.cong (λ x → tabulate-from x l f) (PEq.sym (+-right-identity j))
  tabulate-from-++ {A = A} j (suc k) l f = PEq.cong (λ x → f j ∷ x)
    (begin
      tabulate-from (suc j) (k ℕ.+ l) f
    ≡⟨ tabulate-from-++ (suc j) k l f ⟩
      tabulate-from (suc j) k f ++ tabulate-from (suc j ℕ.+ k) l f
    ≡⟨ PEq.cong (λ x → tabulate-from (suc j) k f ++ tabulate-from x l f)
                (PEq.sym (+-suc j k)) ⟩
      tabulate-from (suc j) k f ++ tabulate-from (j ℕ.+ suc k) l f
    ∎)
    where open EqReasoning (PEq.setoid (List A))

  tabulate-++ :
    ∀ {a} {A : Set a} k l (f : ℕ → A) →
    tabulate (k ℕ.+ l) f ≡ tabulate k f ++ tabulate-from k l f
  tabulate-++ k = tabulate-from-++ zero k

  tabulate-init :
    ∀ {a} {A : Set a} k (f : ℕ → A) →
    tabulate (suc k) f ≡ tabulate k f ++ [ f k ]
  tabulate-init {A = A} k f =
    begin
      tabulate (suc k) f
    ≡⟨ PEq.cong (λ x → tabulate x f)
      (PEq.sym (PEq.trans (+-suc k zero)
                          (PEq.cong suc (+-right-identity k)) )) ⟩
      tabulate (k ℕ.+ 1) f
    ≡⟨ tabulate-++ k 1 f ⟩
      tabulate k f ++ [ f k ]
    ∎
    where open EqReasoning (PEq.setoid (List A))

  ∑-++ : ∀ as bs → ∑ (as ++ bs) ≈ ∑ as + ∑ bs
  ∑-++ [] bs = sym (proj₁ +-identity _)
  ∑-++ (a ∷ as) bs = begin
    a + ∑ (as ++ bs)   ≈⟨ +-cong refl (∑-++ as bs) ⟩
    a + (∑ as + ∑ bs)  ≈⟨ sym (+-assoc a (∑ as) (∑ bs)) ⟩
    (a + ∑ as) + ∑ bs  ∎
    where open EqReasoning setoid

  ∑-pred : ∀ k f → ∑ (tabulate (suc k) f) ≈ ∑ (tabulate k f) + f k
  ∑-pred k f = begin
    ∑ (tabulate (suc k) f)         ≡⟨ PEq.cong ∑ (tabulate-init k f) ⟩
    ∑ (tabulate k f ++ [ f k ])    ≈⟨ ∑-++ (tabulate k f) [ f k ] ⟩
    ∑ (tabulate k f) + ∑ [ f k ]   ≡⟨⟩
    ∑ (tabulate k f) + (f k + 0#)  ≈⟨ +-cong refl (proj₂ +-identity (f k)) ⟩
    ∑ (tabulate k f) + f k         ∎
    where open EqReasoning setoid

  ^-+ : ∀ a l k → a ^ (l ℕ.+ k) ≈ a ^ l * a ^ k
  ^-+ a zero k = begin
    a ^ (zero ℕ.+ k)  ≡⟨⟩
    a ^ k             ≈⟨ sym (proj₁ *-identity (a ^ k)) ⟩
    1# * a ^ k        ≡⟨⟩
    a ^ zero * a ^ k  ∎
    where open EqReasoning setoid
  ^-+ a (suc l) k = begin
    a ^ (suc l ℕ.+ k)    ≡⟨⟩
    a * a ^ (l ℕ.+ k)    ≈⟨ *-cong refl (^-+ a l k) ⟩
    a * (a ^ l * a ^ k)  ≈⟨ sym (*-assoc a _ _) ⟩
    (a * a ^ l) * a ^ k  ≡⟨⟩
    a ^ suc l * a ^ k    ∎
    where open EqReasoning setoid

  split-geo-∑ : ∀ l k a → geo-∑ (l ℕ.+ k) a ≈ geo-∑ l a + a ^ l * geo-∑ k a
  split-geo-∑ l zero a =
    begin
      geo-∑ (l ℕ.+ zero) a
    ≡⟨ PEq.cong (λ x → geo-∑ x a) (+-right-identity l) ⟩
      geo-∑ l a
    ≈⟨ sym (proj₂ +-identity _) ⟩
      geo-∑ l a + 0#
    ≈⟨ +-cong refl (sym (proj₂ *-0# _)) ⟩
      geo-∑ l a + a ^ l * 0#
    ≡⟨⟩
      geo-∑ l a + a ^ l * geo-∑ zero a
    ∎
    where open EqReasoning setoid
  split-geo-∑ l (suc k) a =
    begin
      geo-∑ (l ℕ.+ suc k) a
    ≡⟨ PEq.cong (λ x → geo-∑ x a) (+-suc l k) ⟩
      geo-∑ (suc (l ℕ.+ k)) a
    ≈⟨ ∑-pred (l ℕ.+ k) _ ⟩
      geo-∑ (l ℕ.+ k) a + a ^ (l ℕ.+ k)
    ≈⟨ +-cong (split-geo-∑ l k a) (^-+ a l k) ⟩
      geo-∑ l a + a ^ l * geo-∑ k a + a ^ l * a ^ k
    ≈⟨ +-assoc _ _ _ ⟩
      geo-∑ l a + (a ^ l * geo-∑ k a + a ^ l * a ^ k)
    ≈⟨ +-cong refl (sym (proj₁ distrib (a ^ l) _ _)) ⟩
      geo-∑ l a + a ^ l * (geo-∑ k a + a ^ k)
    ≈⟨ +-cong refl (*-cong refl (sym (∑-pred k _))) ⟩
      geo-∑ l a + a ^ l * geo-∑ (suc k) a
    ∎
    where open EqReasoning setoid
