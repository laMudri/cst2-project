open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
                 (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n)
                 where
  infix 4 _≟_ _≤?_
  _≟_ = De

  open Semiring K renaming (Carrier to C)
  open QueueDiscipline Q renaming (Carrier to Qc)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G

  open import Coinduction

  open import Computation

  open import Data.Bool using (Bool; false; true; T; if_then_else_; not)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties renaming (_≟_ to _F≟_)
  open import Data.List using (List; []; _∷_; map; _++_; filter; foldr)
  open import Data.List.Any using (Any; any)
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (∃; _×_; _,_; ,_; proj₁; proj₂)
  open import Star using (Starˡ; ε; _◅_; _◅◅_)
  open import Data.Unit using (⊤; tt)
  open import Data.Vec
    using ( Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl; toList
          ; tabulate)

  open import Level

  open import Function

  open import Relation.Binary using (Rel)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; inspect; [_]; Reveal_·_is_)
  open import Relation.Nullary using (Dec; yes; no; ¬_)
  open import Relation.Nullary.Decidable using (⌊_⌋)

  _≤?_ : ∀ a b → Dec (a ≤K b)
  a ≤? b = a + b ≟ a

  record Alg-state : Set (c ⊔ ℓ′) where
    constructor alg-state
    field
      known-distances : Vec C n
      added-weight : Vec C n
      vertex-queue : Qc
  open Alg-state public

  module Alg-state-abbrev (i : Alg-state) where
    open Alg-state i public
      renaming (known-distances to d; added-weight to r; vertex-queue to S)

  Path-family : Set _
  Path-family = (q : Fin n) → List (Path s q)

  -- D and R are defined in the paper.
  -- I q is the number of times the vertex q has been inserted into the queue.
  -- E q is the number of times the vertex q has been extracted from the queue.
  record Helper-sets : Set (c ⊔ ℓ′) where
    constructor helper-sets
    field
      D R : Path-family
      I E : Fin n → ℕ

  -- Like vector update notation _[_]≔_, but for dependent functions from Fin.
  _⟨_⟩≔_ :
    ∀ {a n} {A : Fin n → Set a} →
    ((x : Fin n) → A x) → (y : Fin n) → A y → ((x : Fin n) → A x)
  (f ⟨ x ⟩≔ a) y with x F≟ y
  _⟨_⟩≔_ {A = A} f x a y | yes eq = PEq.subst A eq a
  (f ⟨ x ⟩≔ a) y | no _ = f y

  _⟨_⟩&_ :
    ∀ {a n} {A : Fin n → Set a} →
    ((x : Fin n) → A x) → (y : Fin n) → (A y → A y) → ((x : Fin n) → A x)
  (f ⟨ x ⟩& g) y with x F≟ y
  (f ⟨ x ⟩& g) .x | yes PEq.refl = g (f x)
  (f ⟨ x ⟩& g) y | no _ = f y

  do-step-with-sets :
    (state : Alg-state × Helper-sets) →
    Has-items (vertex-queue (proj₁ state)) → Alg-state × Helper-sets
  do-step-with-sets (alg-state d r S , helper-sets D R I E) has-items =
    alg-state d₁ r₂ S₂ , helper-sets D₁ R₂ I₁ E₁
    module DoStepWithSets where
    qS₁ = dequeue S has-items
    q = proj₁ qS₁ ; S₁ = proj₂ qS₁
    E₁ = E ⟨ q ⟩& ℕ.suc
    r′ = lookup q r ; R′ = R q
    r₁ = r [ q ]≔ 0# ; R₁ = R ⟨ q ⟩≔ []
    conditon = λ q′ → not ⌊ lookup q′ d ≤? r′ * G q q′ ⌋
    relaxed-vertices = filter conditon (toList (allFin n))
    I₁ = λ q′ → if conditon q′ then ℕ.suc (I q′) else I q′

    new-weights : Vec C n → Vec C n
    new-weights w = tabulate (λ q′ → case any (_F≟_ q′) relaxed-vertices of λ
      { (yes p) → r′ * G q q′ + lookup q′ w
      ; (no ¬p) → lookup q′ w
      })

    new-sets : Path-family → Path-family
    new-sets H q′ = case any (_F≟_ q′) relaxed-vertices of λ
      { (yes p) → map (λ π → edge ◅ π) R′ ++ H q′
      ; (no ¬p) → H q′
      }

    d₁ = new-weights d ; D₁ = new-sets D
    r₂ = new-weights r₁ ; R₂ = new-sets R₁
    S₂ = foldr (λ q′ S → if contains q′ S then S else enqueue q′ S)
               S₁ relaxed-vertices

  do-step :
    (state : Alg-state) → Has-items (vertex-queue state) → Alg-state
  do-step (alg-state d r S) has-items =
    alg-state d₁ r₂ S₂
    module DoStep where
    qS₁ = dequeue S has-items
    q = proj₁ qS₁ ; S₁ = proj₂ qS₁
    r′ = lookup q r
    r₁ = r [ q ]≔ 0#
    conditon = λ q′ → not ⌊ lookup q′ d ≤? r′ * G q q′ ⌋
    relaxed-vertices = filter conditon (toList (allFin n))

    new-weights : Vec C n → Vec C n
    new-weights w = tabulate (λ q′ → case any (_F≟_ q′) relaxed-vertices of λ
      { (yes p) → r′ * G q q′ + lookup q′ w
      ; (no ¬p) → lookup q′ w
      })

    d₁ = new-weights d
    r₂ = new-weights r₁
    S₂ = foldr (λ q′ S → if contains q′ S then S else enqueue q′ S)
               S₁ relaxed-vertices

  _↝_ : Rel Alg-state _
  i ↝ j = ∃ λ hi → do-step i hi ≡ j

  _↝S_ : Rel (Alg-state × Helper-sets) _
  i ↝S j = ∃ λ hi → do-step-with-sets i hi ≡ j

  -- Algorithm expressed as a potentially infinite computation path.
  -- We have only one reduction rule (see _↝_):
  --  hi : j has a queue with items
  -- -------------------------------
  --        j ⇒ do-step hi j
  gsssd-loop-computation : (i : Alg-state) → Computation _↝_ i
  gsssd-loop-computation (alg-state d r S) with count S | inspect count S
  gsssd-loop-computation (alg-state d r S) | ℕ.zero | [ eq ] =
    (λ { j (hi , _) → zero-not-suc (PEq.subst Is-suc eq hi) }) ⇏
  gsssd-loop-computation (alg-state d r S) | ℕ.suc c | [ eq ] =
    let hi = PEq.subst Is-suc (PEq.sym eq) is-suc in
    let j = do-step (alg-state d r S) hi in
    (hi , PEq.refl) ⇒ ♯ (gsssd-loop-computation j)

  gsssd-loop-computation-with-sets :
    (i : Alg-state × Helper-sets) → Computation _↝S_ i
  gsssd-loop-computation-with-sets (alg-state d r S , h)
    with count S | inspect count S
  gsssd-loop-computation-with-sets (alg-state d r S , h) | ℕ.zero | [ eq ] =
    (λ { j (hi , _) → zero-not-suc (PEq.subst Is-suc eq hi) }) ⇏
  gsssd-loop-computation-with-sets (alg-state d r S , h) | ℕ.suc c | [ eq ] =
    let hi = PEq.subst Is-suc (PEq.sym eq) is-suc in
    let j = do-step-with-sets (alg-state d r S , h) hi in
    (hi , PEq.refl) ⇒ ♯ (gsssd-loop-computation-with-sets j)

  -- Algorithm expressed with countdown argument
  gsssd-loop : ℕ → (d r : Vec C n) → Qc → Vec C n
  gsssd-loop zero d r S = d  -- shouldn't be used
  gsssd-loop (suc countdown) d r S with count S | inspect count S
  gsssd-loop (ℕ.suc countdown) d r S | ℕ.zero | eq = d [ s ]≔ 1#
  gsssd-loop (ℕ.suc countdown) d r S | ℕ.suc c | [ eq ] =
    let hi = PEq.subst Is-suc (PEq.sym eq) is-suc in
    let alg-state d r S = do-step (alg-state d r S) hi in
    gsssd-loop countdown d r S

  initial-state : Alg-state
  initial-state = alg-state d d S
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
    S = enqueue s empty

  initial-state-with-sets : Alg-state × Helper-sets
  initial-state-with-sets = initial-state , helper-sets D D I I
    where
    D : (q : Fin n) → List (Path s q)
    D q with s F≟ q
    ... | yes eq = PEq.subst (Path s) eq ε ∷ []
    ... | no _ = []

    I : Fin n → ℕ
    I _ = 0

  Reachable : Alg-state → Set _
  Reachable = Starˡ _↝_ initial-state

  Reachable-with-sets : Alg-state × Helper-sets → Set _
  Reachable-with-sets = Starˡ _↝S_ initial-state-with-sets

  -- Generic single-source shortest-distance
  gsssd : Vec C n
  gsssd = gsssd-loop (n ℕ.* n) d d S
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
    S = enqueue s empty

  gsssd-computation : Computation _↝_ initial-state
  gsssd-computation = gsssd-loop-computation initial-state

  gsssd-computation-with-sets : Computation _↝S_ initial-state-with-sets
  gsssd-computation-with-sets =
    gsssd-loop-computation-with-sets initial-state-with-sets
