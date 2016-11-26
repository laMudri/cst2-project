open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm {c n ℓ ℓ′} (K : Semiring c ℓ) (D : Decidable K)
                 (Q : Queue (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  infix 4 _≟_ _≤?_
  _≟_ = D

  open Semiring K renaming (Carrier to C)
  open Queue Q renaming (Carrier to Qc)
  open import Semiring.Definitions K
  open import Semiring.Properties K

  open import Coinduction

  open import Data.Bool using (Bool; false; true; T; if_then_else_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Data.Unit using (⊤; tt)
  open import Data.Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl)

  open import Level

  open import Function

  open import Relation.Binary using (Rel)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; inspect; [_]; Reveal_·_is_)
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  _≤?_ : ∀ a b → Dec (a ≤K b)
  a ≤? b = a + b ≟ a

  record Alg-state : Set (c ⊔ ℓ′) where
    constructor alg-state
    field
      known-distances : Vec C n
      r : Vec C n
      vertex-queue : Qc

  infixr 5 _⇒_ _⇏
  data Computation {st ℓ} {St : Set st} (R : Rel St ℓ) : St → Set (st ⊔ ℓ) where
    _⇏ : ∀ {i} → (∀ j → ¬ R i j) → Computation R i
    _⇒_ : ∀ {i j} → R i j → ∞ (Computation R j) → Computation R i

  data Terminating {st ℓ} {St : Set st} (R : Rel St ℓ) : St → Set (st ⊔ ℓ) where
    _⇏ : ∀ {i} → (∀ j → ¬ R i j) → Terminating R i
    _⇒_ : ∀ {i j} → R i j → Terminating R j → Terminating R i

  data Terminates {st ℓ} {St : Set st} {R : Rel St ℓ}
                  : {i : St} → Computation R i → Set (st ⊔ ℓ) where
    now : ∀ {i} → (t : ∀ j → ¬ R i j) → Terminates {i = i} (t ⇏)
    later : ∀ {i j} (r : R i j) {c : Computation R j} →
            Terminates c → Terminates (r ⇒ ♯ c)

  Terminates-result :
    ∀ {st ℓ} {St : Set st} {R : Rel St ℓ} {i : St}
    {c : Computation R i} → Terminates c → St
  Terminates-result (now {i} t) = i
  Terminates-result (later r t) = Terminates-result t

  function :
    ∀ {st ℓ} {St : Set st} {R : Rel St ℓ}
    {cf : ∀ i → Computation R i} → (∀ i → Terminates (cf i)) →
    St → St
  function p i = Terminates-result (p i)

  do-step :
    (state : Alg-state) → T (has-items (Alg-state.vertex-queue state)) →
    Alg-state
  do-step (alg-state d r S) has-items =
    let q , S = dequeue S has-items in
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
    alg-state d r S

  -- Algorithm expressed as a potentially infinite computation path.
  -- We have only one reduction rule:
  --  hi : j has a queue with items
  -- -------------------------------
  --        j ⇒ do-step hi j
  gsssd-loop-computation :
    (i : Alg-state) → Computation (λ j k → ∃ λ hi → do-step j hi ≡ k) i
  gsssd-loop-computation (alg-state d r S)
    with has-items S | inspect has-items S
  gsssd-loop-computation (alg-state d r S) | false | [ eq ] =
    (λ { j (hi , _) → PEq.subst T eq hi }) ⇏
  gsssd-loop-computation (alg-state d r S) | true | [ eq ] =
    let hi = PEq.subst T (PEq.sym eq) tt in
    let j = do-step (alg-state d r S) hi in
    (hi , PEq.refl) ⇒ ♯ (gsssd-loop-computation j)

  -- Algorithm expressed with countdown argument
  gsssd-loop : ℕ → (d r : Vec C n) → Qc → Vec C n
  gsssd-loop zero d r S = d  -- shouldn't be used
  gsssd-loop (suc countdown) d r S =
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
      gsssd-loop countdown d r S
    }

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
    S = proj₁ (enqueue s empty)
