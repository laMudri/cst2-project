open import Queue

module Queue.Properties {a ℓ} {A : Set a} (Q : QueueDiscipline A ℓ) where
  open QueueDiscipline Q

  open import Data.List using (List; []; _∷_; foldr; length)
  open import Data.Nat using (ℕ; zero; suc; _+_)

  open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; module ≡-Reasoning)

  enqueue-+ : ∀ xs q → count (foldr enqueue q xs) ≡ length xs + count q
  enqueue-+ [] q = refl
  enqueue-+ (x ∷ xs) q = begin
    count (enqueue x (foldr enqueue q xs))  ≡⟨ enqueue-suc _ _ ⟩
    suc (count (foldr enqueue q xs))        ≡⟨ cong suc (enqueue-+ xs q) ⟩
    suc (length xs + count q)               ∎
    where open ≡-Reasoning
