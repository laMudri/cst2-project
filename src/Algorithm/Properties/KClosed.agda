open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat as ℕ
  using ( ℕ; zero; suc; _≤_; z≤n; s≤s; _≤′_; ≤′-refl; ≤′-step
        ; module ≤-Reasoning
        )

module Algorithm.Properties.KClosed
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n)
       {k : ℕ} (closed : let open GD {K = K} G in k ClosedOnG) where

  open import Algorithm K De Q G s
  open Semiring K renaming (Carrier to C)
  open QueueDiscipline Q renaming (Carrier to Qc)
  open import Queue.Properties Q
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G
  open import Graph.Cycle {K = K} G s

  open import App
  open import App.Properties

  open import Data.Bool using (Bool; false; true; not; T; if_then_else_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties renaming (_≟_ to _F≟_)
  open import Data.List as List using (List; []; _∷_; map; _++_)
  open import Data.List.All as All using (All; []; _∷_)
  open import Data.List.Any as Any
    using (module Membership-≡; Any; here; there; any)
  open Membership-≡ using (_∈_; _∉_; _⊆_; find; ⊆-preorder)
  open import Data.List.Any.Properties as AnyP using (++ʳ)
  import Data.List.Any.Membership as Mem
  open import Data.Nat.Properties as ℕP using (≤″⇒≤)
  open import Data.Nat.Properties.Simple as ℕS using (+-suc)
  open import Data.Product
    using (∃; ∃₂; Σ-syntax; _×_; _,_; _,′_; proj₁; proj₂; <_,_>)
  open import Star using ( Starˡ; ε; _◅_; _◅◅_; ◅-injective′; fold-preorder
                         ; concat-vec; length)
  import Star.TransitionMembership as ↝
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)
  open import Vec as Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl;
          foldl-preserves; function→All; toList; intersperse⁺)

  open import Function
  open import Function.Equality using (_⟨$⟩_)
  open import Function.Equivalence using (Equivalence; _⇔_)
  open import Function.Inverse using (Inverse; _↔_)
  open import Function.Surjection using (Surjection; _↠_)

  import Level as L

  open import Relation.Binary using (Preorder; DecTotalOrder)
  import Relation.Binary.On as On
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_]; module ≡-Reasoning)
  open import Relation.Nullary using (Dec; yes; no; ¬_)
  open import Relation.Nullary.Negation using (¬?)
  open import Relation.Nullary.Product using (_×-dec_)
  import Relation.Unary as U

  {-
  -- The number of times each vertex q is enqueued is less than card (P k q).
  -- There is a surjection from P k q to Fin (I q).
  insertions-finite :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∀ q → Surjection (P k q) (PEq.setoid (Fin (I q)))
  insertions-finite = {!!}

  extractions-≤ :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∣ E ∣ ≤ ∣ List.length ∘ all-P k ∣
  extractions-≤ {_ , helper-sets _ _ _ _ E} ε =
    PEq.subst (_≤ ∣ List.length ∘ all-P k ∣) (PEq.sym (sum-0 n)) z≤n
  extractions-≤ (r@(hi , PEq.refl) ◅ rs) = {!!}
    where open Internals-ij-from-↝ r
  -}

  postulate Dq⊆Pₖq : ∀ t → let open Helper-sets (proj₂ (σS t IS₀)) in
                     ∀ q → D q ⊆ all-P k q

  postulate Dq≤Pₖq : ∀ t → let open Helper-sets (proj₂ (σS t IS₀)) in
                     ∀ q → List.length (D q) ≤ List.length (all-P k q)

  postulate L-maximal : ∀ t → let open Helper-sets (proj₂ (σS t IS₀)) in
                        ∀ q → List.length (all-P k q) ≤ L q → all-P k q ⊆ D q
