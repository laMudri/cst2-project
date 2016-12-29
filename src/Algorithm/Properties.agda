open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Properties
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : Queue (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open Semiring K renaming (Carrier to C)
  open Queue Q renaming (Carrier to Qc)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G

  open import Data.Bool using (Bool; false; true; T; if_then_else_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties renaming (_≟_ to _F≟_)
  open import Data.List using (List; []; _∷_; map; _++_)
  open import Data.List.All as All using (All; []; _∷_)
  open import Data.List.Any as Any
    using (module Membership-≡; Any; here; there; any)
  open Membership-≡ using (_∈_; _∉_; _⊆_; find)
  open import Data.List.Any.Properties as AnyP using (++ʳ)
  import Data.List.Any.Membership as Mem
  open import Data.Product using (∃; Σ-syntax; _×_; _,_; _,′_; proj₁; proj₂)
  open import Star using (Starˡ; ε; _◅_; _◅◅_; ◅-injective′)
  import Star.TransitionMembership as ↝
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Data.Unit using (⊤; tt)
  open import Vec as Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl;
          foldl-preserves; function→All; toList)

  open import Function
  open import Function.Equality using (_⟨$⟩_)
  open import Function.Inverse using (Inverse)

  import Level as L

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_])
  open import Relation.Nullary using (Dec; yes; no; ¬_)
  open import Relation.Nullary.Negation using (¬?)
  open import Relation.Nullary.Product using (_×-dec_)

  module Internals-jk (k : Alg-state × Helper-sets)
                   (hi : T (has-items (vertex-queue (proj₁ k)))) where
    open Alg-state-abbrev (proj₁ k) public renaming (d to dₖ; r to rₖ; S to Sₖ)
    open Helper-sets (proj₂ k) public renaming (D to Dₖ; R to Rₖ)

    open DoStepWithSets′ dₖ rₖ Sₖ Dₖ Rₖ hi public
      renaming (q to dequeued; d₁ to dⱼ; r₂ to rⱼ; S₂ to Sⱼ
                             ; D₁ to Dⱼ; R₂ to Rⱼ)
      using ( r₁; S₁; R₁; r′; R′; conditon; relaxed-vertices
            ; new-weights; new-sets)

  module Internals-ij = Internals-jk
    renaming ( dⱼ to dᵢ; rⱼ to rᵢ; Sⱼ to Sᵢ; Dⱼ to Dᵢ; Rⱼ to Rᵢ
             ; dₖ to dⱼ; rₖ to rⱼ; Sₖ to Sⱼ; Dₖ to Dⱼ; Rₖ to Rⱼ)

  do-D-step :
    (state : Alg-state × Helper-sets) →
    T (has-items (vertex-queue (proj₁ state))) → Path-family
  do-D-step (alg-state d r S , helper-sets D R) hi =
    let q , S = dequeue S hi in
    let r′ = lookup q r in let R′ = R q in
    let r = r [ q ]≔ 0# in let R = R ⟨ q ⟩≔ [] in
    λ q′ → case lookup q′ d ≤? r′ * G q q′ of λ
      { (yes p) → D q′
      ; (no ¬p) → map (λ π → edge ◅ π) R′ ++ D q′
      }

  do-D-step-correct :
    ∀ (state : Alg-state × Helper-sets)
    (hi : T (has-items (vertex-queue (proj₁ state)))) q′ →
    do-D-step state hi q′ ≡ Helper-sets.D (proj₂ (do-step-with-sets state hi)) q′
  do-D-step-correct (alg-state d r S , helper-sets D R) hi q′ with
    let q , S = dequeue S hi in
    let r′ = lookup q r in let R′ = R q in
    let r = r [ q ]≔ 0# in let R = R ⟨ q ⟩≔ [] in
    lookup q′ d ≤? r′ * G q q′
  do-D-step-correct (alg-state d r S , helper-sets D R) hi q′ | yes p = {!!}
  do-D-step-correct (alg-state d r S , helper-sets D R) hi q′ | no ¬p = {!!}

  D-grows-in-inner-step :
    ∀ q r′ R′ j q′ →
    let i = do-inner-step q r′ R′ j q′ in
    let open Helper-sets (proj₂ i) renaming (D to Di; R to Ri) in
    let open Helper-sets (proj₂ j) renaming (D to Dj; R to Rj) in
    ∀ q″ → Dj q″ ⊆ Di q″
  D-grows-in-inner-step q r′ R′ (alg-state d r S , helper-sets D R) q′ q″ π∈Djq″ with lookup q′ d ≤? r′ * G q q′
  D-grows-in-inner-step q r′ R′ (alg-state d r S , helper-sets D R) q′ q″ π∈Djq″ | yes _ = π∈Djq″
  D-grows-in-inner-step q r′ R′ (alg-state d r S , helper-sets D R) q′ q″ π∈Djq″ | no _ with q′ F≟ q″
  D-grows-in-inner-step q r′ R′ (alg-state d r S , helper-sets D R) q′ .q′ π∈Djq′ | no _ | yes PEq.refl = ++ʳ (map (_◅_ edge) R′) π∈Djq′
  D-grows-in-inner-step q r′ R′ (alg-state d r S , helper-sets D R) q′ q″ π∈Djq″ | no _ | no ¬p = π∈Djq″

  D-grows :
    ∀ {i j} → j ↝S i →
    let open Helper-sets (proj₂ i) renaming (D to Di; R to Ri) in
    let open Helper-sets (proj₂ j) renaming (D to Dj; R to Rj) in
    ∀ q → Dj q ⊆ Di q
  D-grows {j = alg-state d r S , helper-sets D R} (hi , PEq.refl) q′ {π} π∈Dq′ =
    let q , S = dequeue S hi in
    let r′ = lookup q r in let R′ = R q in
    let r = r [ q ]≔ 0# in let R = R ⟨ q ⟩≔ [] in
    {!!}
    --foldl-preserves (λ k → π ∈ Helper-sets.D (proj₂ k) q′) π∈Dq′
    --  (function→All _ (λ _ {k} → D-grows-in-inner-step q r′ R′ k _ q′)
    --                (allFin n))

  T-dec : ∀ x → Dec (T x)
  T-dec false = no (λ z → z)
  T-dec true = yes tt

  T-prop : ∀ {x} (t u : T x) → t ≡ u
  T-prop {false} () u
  T-prop {true} tt tt = PEq.refl

  module _ {m q} (π : Path s m) (e : Edge m q) {j k} (r : k ↝S j) where
    open Helper-sets (proj₂ j) renaming (D to Dⱼ; R to Rⱼ)
    open Helper-sets (proj₂ k) renaming (D to Dₖ; R to Rₖ)
    hi = proj₁ r
    eq = proj₂ r

    eπ-added-to-D : Set _
    eπ-added-to-D = (e ◅ π) ∉ Dₖ q × (e ◅ π) ∈ Dⱼ q

    eπ-added-to-D? : Dec eπ-added-to-D
    eπ-added-to-D? =
      let dec = any (Path._≡?_ (edge ◅ π)) in
      ¬? (dec (Dₖ q)) ×-dec dec (Dⱼ q)

    not-added→was-there : ¬ eπ-added-to-D → (e ◅ π) ∈ Dⱼ q → (e ◅ π) ∈ Dₖ q
    not-added→was-there ¬added eπ∈Dⱼq with any (Path._≡?_ (e ◅ π)) (Dₖ q)
    not-added→was-there ¬added eπ∈Dⱼq | yes p = p
    not-added→was-there ¬added eπ∈Dⱼq | no ¬p = ⊥-elim (¬added (¬p , eπ∈Dⱼq))

    dequeued-vertex : Fin n
    dequeued-vertex = proj₁ (dequeue (vertex-queue (proj₁ k)) hi)

    m-dequeued : Set _
    m-dequeued = m ≡ dequeued-vertex

    m-dequeued? : Dec m-dequeued
    m-dequeued? = m F≟ dequeued-vertex

    π-was-in-R : Set _
    π-was-in-R = π ∈ Rₖ m

    π-was-in-R? : Dec π-was-in-R
    π-was-in-R? = any (Path._≡?_ π) (Rₖ m)

  module _ {m q} (π : Path s m) (e : Edge m q) where
    eπ-added-to-D→m-dequeued :
      ∀ {j k} (r : k ↝S j) → eπ-added-to-D π e r → m-dequeued π e r
    eπ-added-to-D→m-dequeued {k = k} (hi , PEq.refl) (eπ∉Dₖq , eπ∈Dⱼq) = go
      where
      open Internals-jk k hi

      lemma :
        (R′ : List (Path s dequeued)) → e ◅ π ∈ map (edge ◅_) R′ → m ≡ dequeued
      lemma [] ()
      lemma (π′ ∷ R′) (here px) = proj₁ (◅-injective′ px)
      lemma (π′ ∷ R′) (there any) = lemma R′ any

      go : m ≡ dequeued
      go with any (_F≟_ q) relaxed-vertices
      go | yes p with Inverse.from (AnyP.++↔ {xs = map (edge ◅_) R′}) ⟨$⟩ eπ∈Dⱼq
      go | yes p | (inj₁ eπ∈eR′) = lemma R′ eπ∈eR′
      go | yes p | (inj₂ eπ∈Dₖq) = ⊥-elim (eπ∉Dₖq eπ∈Dₖq)
      go | no ¬p = ⊥-elim (eπ∉Dₖq eπ∈Dⱼq)

    eπ-added-to-D→π-was-in-R :
      ∀ {j k} (r : k ↝S j) → eπ-added-to-D π e r → π-was-in-R π e r
    eπ-added-to-D→π-was-in-R {k = k} (hi , PEq.refl) (eπ∉Dₖq , eπ∈Dⱼq) = go
      where
      open Internals-jk k hi

      m≡dequeued : m ≡ dequeued
      m≡dequeued = eπ-added-to-D→m-dequeued (hi , PEq.refl) (eπ∉Dₖq , eπ∈Dⱼq)

      lemma :
        (Rₖm : List (Path s m)) → e ◅ π ∈ map (edge ◅_) Rₖm → π ∈ Rₖm
      lemma [] ()
      lemma (x ∷ Rₖm) (here PEq.refl) = here PEq.refl
      lemma (x ∷ Rₖm) (there pxs) = there (lemma Rₖm pxs)

      go : π ∈ Rₖ m
      go with any (_F≟_ q) relaxed-vertices
      go | yes p with Inverse.from (AnyP.++↔ {xs = map (edge ◅_) R′}) ⟨$⟩ eπ∈Dⱼq
      go | yes p | (inj₁ eπ∈eR′) =
        let eπ∈eRₖm = PEq.subst (λ v → e ◅ π ∈ map (edge ◅_) (Rₖ v))
                                (PEq.sym m≡dequeued) eπ∈eR′ in
        lemma (Rₖ m) eπ∈eRₖm
      go | yes p | (inj₂ eπ∈Dₖq) = ⊥-elim (eπ∉Dₖq eπ∈Dₖq)
      go | no ¬p = ⊥-elim (eπ∉Dₖq eπ∈Dⱼq)

  ∈D→was-added :
    ∀ {i} (rs : Reachable-with-sets i) →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π : Path s m) (e : Edge m q) → (e ◅ π) ∈ D q →
    ↝.Any (eπ-added-to-D π e) rs
  ∈D→was-added ε {m} {q} π e eπ∈Dq with s F≟ q
  ∈D→was-added ε π e (here ()) | yes PEq.refl
  ∈D→was-added ε π e (there ()) | yes PEq.refl
  ∈D→was-added ε π e () | no ¬p
  ∈D→was-added (r ◅ rs) π e eπ∈Dq with eπ-added-to-D? π e r
  ∈D→was-added (r ◅ rs) π e eπ∈Dq | yes p = ↝.Any.here p
  ∈D→was-added (r ◅ rs) π e eπ∈Dq | no ¬p =
    ↝.Any.there (∈D→was-added rs π e (not-added→was-there π e r ¬p eπ∈Dq))

  path-in-D-gives-path-in-R′ :
    ∀ {i} (rs : Reachable-with-sets i) →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π : Path s m) (e : Edge m q) → (e ◅ π) ∈ D q →
    ↝.Any (λ { {j} {alg-state d r S , helper-sets D R} _ →
            ∃ λ hi → m ≡ proj₁ (dequeue S hi) × π ∈ R m }) rs
  path-in-D-gives-path-in-R′ rs {m} π e eπ∈Dq =
    ↝.map (λ {j} {k} {r} → f j k r) (∈D→was-added rs π e eπ∈Dq)
    where
    f : ∀ j k (r : k ↝S j) → eπ-added-to-D π e r →
        ∃ λ hi → let open Internals-jk k hi in m ≡ dequeued × π ∈ Rₖ m
    f j k r@(hi , PEq.refl) added =
      let m≡dequeued = eπ-added-to-D→m-dequeued π e r added in
      let π∈Rₖm = eπ-added-to-D→π-was-in-R π e r added in
      hi , m≡dequeued , π∈Rₖm

  lemma-5 :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ m q π (e : Edge m q) → let eπ = e ◅ π in
    eπ ∈ D q → eπ ∈ map (λ ρ → e ◅ ρ) (R m) → ⊥

  lemma-5 .initial-state-with-sets ε m q π e π∈D π∈R with s F≟ q
  lemma-5 _ ε m .s π e (here ()) π∈R | yes PEq.refl
  lemma-5 _ ε m q π e (there ()) π∈R | yes p
  lemma-5 _ ε m q π e () π∈R | no ¬p

  lemma-5 i@.(do-step-with-sets′ j hi) (_◅_ {j = j} r@(hi , PEq.refl) rs) m q π e eπ∈Dᵢq eπ∈eRᵢm =
    let j′ , k′ , r′ , elem , pr′ = ↝.find stuff in
    {!ih!}
    where
    open Internals-ij j hi

    π∈Rᵢm : π ∈ Rᵢ m
    π∈Rᵢm = {!!}

    ih = lemma-5 j rs q
    stuff = path-in-D-gives-path-in-R′ (r ◅ rs) π e eπ∈Dᵢq
    more-stuff = path-in-D-gives-path-in-R′ rs π e {!D-grows r q ?!}

  lemma-6-step :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π : Path s m) (e : Edge m q) → (e ◅ π) ∈ D q → π ∈ D m
  lemma-6-step i rs {m} {q} π e e◅π∈Dq =
    let thing = path-in-D-gives-path-in-R′ rs π e e◅π∈Dq in
    let j , k , r , r∈rs , hi , m≡dequeued , π∈Rₖm = ↝.find thing in
    {!!}
  --lemma-6-step .initial-state-with-sets ε {m} {q} π e e◅π∈Dq with s F≟ q
  --lemma-6-step _ ε π e (here ()) | yes PEq.refl
  --lemma-6-step _ ε π e (there ()) | yes p
  --lemma-6-step _ ε π e () | no ¬p
  --lemma-6-step _ (_◅_ {j = j , js} (hi , PEq.refl) rs) π e e◅π∈Dq =
  --  let ih = lemma-6-step (j , js) rs π e {!!} in
  --  {!ih!}

  lemma-6 :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π₁ : Path s m) (π₂ : Path m q) → (π₂ ◅◅ π₁) ∈ D q → π₁ ∈ D m
  lemma-6 i rs π₁ ε π∈Dq = π∈Dq
  lemma-6 i rs π₁ (e ◅ π₂) e◅π∈Dq =
    let π∈Dq′ = lemma-6-step i rs (π₂ ◅◅ π₁) e e◅π∈Dq in
    lemma-6 i rs π₁ π₂ π∈Dq′
