open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Properties
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open Semiring K renaming (Carrier to C)
  open QueueDiscipline Q renaming (Carrier to Qc)
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
  open Membership-≡ using (_∈_; _∉_; _⊆_; find; ⊆-preorder)
  open import Data.List.Any.Properties as AnyP using (++ʳ)
  import Data.List.Any.Membership as Mem
  open import Data.Product
    using (∃; ∃₂; Σ-syntax; _×_; _,_; _,′_; proj₁; proj₂; <_,_>)
  open import Star using ( Starˡ; ε; _◅_; _◅◅_; ◅-injective′; fold-preorder
                         ; concat-vec)
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

  import Level as L

  open import Relation.Binary using (Preorder)
  import Relation.Binary.On as On
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_])
  open import Relation.Nullary using (Dec; yes; no; ¬_)
  open import Relation.Nullary.Negation using (¬?)
  open import Relation.Nullary.Product using (_×-dec_)
  import Relation.Unary as U

  module Internals-jk (k : Alg-state × Helper-sets)
                      (hi : Has-items (vertex-queue (proj₁ k))) where
    open Alg-state-abbrev (proj₁ k) public renaming (d to dₖ; r to rₖ; S to Sₖ)
    open Helper-sets (proj₂ k) public
      renaming (D to Dₖ; R to Rₖ; L to Lₖ; I to Iₖ; E to Eₖ)

    open DoStepWithSets dₖ rₖ Sₖ Dₖ Rₖ Lₖ Iₖ Eₖ hi public
      renaming (q to dequeued; d₁ to dⱼ; r₂ to rⱼ; S₂ to Sⱼ
                             ; D₁ to Dⱼ; R₂ to Rⱼ; L₁ to Lⱼ; I₁ to Iⱼ; E₁ to Eⱼ)
      using ( r₁; S₁; R₁; r′; R′; conditon; relaxed-vertices
            ; new-weights; new-sets)

  module Internals-jk-from-↝ {j k} (r : k ↝S j) = Internals-jk k (proj₁ r)

  module Internals-ij = Internals-jk
    renaming ( dⱼ to dᵢ; rⱼ to rᵢ; Sⱼ to Sᵢ
             ; Dⱼ to Dᵢ; Rⱼ to Rᵢ; Lⱼ to Lᵢ; Iⱼ to Iᵢ; Eⱼ to Eᵢ
             ; dₖ to dⱼ; rₖ to rⱼ; Sₖ to Sⱼ
             ; Dₖ to Dⱼ; Rₖ to Rⱼ; Lₖ to Lⱼ; Iₖ to Iⱼ; Eₖ to Eⱼ)

  module Internals-ij-from-↝ {i j} (r : j ↝S i) = Internals-ij j (proj₁ r)

  D-grows-step :
    ∀ {i j} (r : j ↝S i) →
    let open Internals-ij j (proj₁ r) in
    ∀ {q} → Dⱼ q ⊆ Dᵢ q
  D-grows-step {j = j} (hi , PEq.refl) {q} {π} = go
    where
    open Internals-ij j hi

    go : π ∈ Dⱼ q → π ∈ Dᵢ q
    go π∈Dⱼq with any (_F≟_ q) relaxed-vertices
    go π∈Dⱼq | yes p = AnyP.++ʳ (map (edge ◅_) R′) π∈Dⱼq
    go π∈Dⱼq | no ¬p = π∈Dⱼq

  D-grows : ∀ {i j} (rs : Starˡ _↝S_ j i) →
            let open Helper-sets (proj₂ i) renaming (D to Dᵢ) in
            let open Helper-sets (proj₂ j) renaming (D to Dⱼ) in
            ∀ {q} → Dⱼ q ⊆ Dᵢ q
  D-grows {_ , helper-sets Dᵢ _ _ _ _} ε {q} = id
  D-grows (r@(hi , PEq.refl) ◅ rs) {q} =
    Pre.trans (D-grows rs {q}) (D-grows-step r {q})
    where module Pre = Preorder (⊆-preorder (Path s q))

  T-dec : ∀ x → Dec (T x)
  T-dec false = no (λ z → z)
  T-dec true = yes tt

  T-prop : ∀ {x} (t u : T x) → t ≡ u
  T-prop {false} () u
  T-prop {true} tt tt = PEq.refl

  module _ {m q} {π : Path s m} {e : Edge m q} {H : List (Path s m)} where
    take-the-edge-off : e ◅ π ∈ map (edge ◅_) H → π ∈ H
    take-the-edge-off eπ∈eH = Any.map f (Inverse.from AnyP.map↔ ⟨$⟩ eπ∈eH)
      where
      f : (λ π′ → e ◅ π ≡ edge ◅ π′) U.⊆ _≡_ π
      f eπ≡eπ′ with ◅-injective′ eπ≡eπ′
      f eπ≡eπ′ | PEq.refl , _ , π≡π′ = π≡π′

    put-the-edge-on : π ∈ H → e ◅ π ∈ map (edge ◅_) H
    put-the-edge-on π∈H = Inverse.to Mem.map-∈↔ ⟨$⟩ (π , π∈H , PEq.refl)

  module _ {m q} (π : Path s m) (e : Edge m q) where
    module _ {j k} (r : k ↝S j) where
      private
        open Helper-sets (proj₂ j) renaming (D to Dⱼ; R to Rⱼ)
        --open Helper-sets (proj₂ k) renaming (D to Dₖ; R to Rₖ)
        hi = proj₁ r
        eq = proj₂ r
        open Internals-jk k hi hiding (Dⱼ; Rⱼ)

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

      m-dequeued : Set _
      m-dequeued = m ≡ dequeued

      m-dequeued? : Dec m-dequeued
      m-dequeued? = m F≟ dequeued

      π-was-in-R : Set _
      π-was-in-R = π ∈ Rₖ m

      π-was-in-R? : Dec π-was-in-R
      π-was-in-R? = any (Path._≡?_ π) (Rₖ m)

      e-relaxed : Set _
      e-relaxed = q ∈ relaxed-vertices

    eπ-added-to-D→m-dequeued :
      ∀ {j k} (r : k ↝S j) → eπ-added-to-D r → m-dequeued r
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
      ∀ {j k} (r : k ↝S j) → eπ-added-to-D r → π-was-in-R r
    eπ-added-to-D→π-was-in-R {k = k} (hi , PEq.refl) (eπ∉Dₖq , eπ∈Dⱼq) = go
      where
      open Internals-jk k hi

      m≡dequeued : m ≡ dequeued
      m≡dequeued = eπ-added-to-D→m-dequeued (hi , PEq.refl) (eπ∉Dₖq , eπ∈Dⱼq)

      go : π ∈ Rₖ m
      go with any (_F≟_ q) relaxed-vertices
      go | yes p with Inverse.from (AnyP.++↔ {xs = map (edge ◅_) R′}) ⟨$⟩ eπ∈Dⱼq
      go | yes p | (inj₁ eπ∈eR′) =
        let eπ∈eRₖm = PEq.subst (λ v → e ◅ π ∈ map (edge ◅_) (Rₖ v))
                                (PEq.sym m≡dequeued) eπ∈eR′ in
        take-the-edge-off eπ∈eRₖm
      go | yes p | (inj₂ eπ∈Dₖq) = ⊥-elim (eπ∉Dₖq eπ∈Dₖq)
      go | no ¬p = ⊥-elim (eπ∉Dₖq eπ∈Dⱼq)

    {-
    eπ-added-to-D⇔ :
      ∀ {j k} (r : k ↝S j) → e-relaxed r →
      (m-dequeued r × π-was-in-R r) ⇔ eπ-added-to-D r
    eπ-added-to-D⇔ {k = k} r@(hi , PEq.refl) e-relaxed = record
      { to = PEq.→-to-⟶ to
      ; from = record { _⟨$⟩_ = < eπ-added-to-D→m-dequeued r , eπ-added-to-D→π-was-in-R r > ; cong = {!!} }
      }
      where
      open Internals-jk k hi

      to : m-dequeued r × π-was-in-R r → eπ-added-to-D r
      to (m-d , π∈Rₖm) with any (_F≟_ q) relaxed-vertices
      to (PEq.refl , π∈Rₖm) | yes p = (λ eπ∈Dₖq → {!!}) , AnyP.++ˡ (put-the-edge-on π∈Rₖm)
      to (m-d , π∈Rₖm) | no ¬p = ⊥-elim (¬p e-relaxed)
    -}

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
    ↝.Any (λ { {j} {alg-state _ _ S , helper-sets _ R _ _ _} (hi , eq) →
             m ≡ proj₁ (dequeue S hi) × π ∈ R m }) rs
  path-in-D-gives-path-in-R′ rs {m} π e eπ∈Dq =
    ↝.map (λ {j} {k} {r} → f j k r) (∈D→was-added rs π e eπ∈Dq)
    where
    f : ∀ j k (r : k ↝S j) → eπ-added-to-D π e r →
        let open Internals-jk k (proj₁ r) in
        m ≡ dequeued × π ∈ Rₖ m
    f j k r@(hi , PEq.refl) added =
      let m≡dequeued = eπ-added-to-D→m-dequeued π e r added in
      let π∈Rₖm = eπ-added-to-D→π-was-in-R π e r added in
      m≡dequeued , π∈Rₖm

  R⊆D : ∀ {i} (rs : Reachable-with-sets i) →
        let open Helper-sets (proj₂ i) in
        ∀ {q} → R q ⊆ D q
  R⊆D ε π∈Rq = π∈Rq
  R⊆D (_◅_ {j = j} (hi , PEq.refl) rs) {q} {π} = go
    where
    open Internals-ij j hi

    go : π ∈ Rᵢ q → π ∈ Dᵢ q

    go π∈Rq with any (_F≟_ q) relaxed-vertices  -- Was stuff added to D and R?

    go π∈Rq | yes _ with dequeued F≟ q  -- Was this R just cleared?
    go π∈Rq | yes _ | yes PEq.refl
      with Inverse.from (AnyP.++↔ {xs = map (edge ◅_) (Rⱼ dequeued)}) ⟨$⟩ π∈Rq
      -- Was our path π just added (l) or there from before (r)?
    go π∈Rq | yes _ | yes PEq.refl | inj₁ x = AnyP.++ˡ x
      -- Just added to D, too
    go π∈Rq | yes _ | yes PEq.refl | inj₂ ()
      -- Can't have been there before; R was just cleared
    go π∈Rq | yes _ | no ¬p
      with Inverse.from (AnyP.++↔ {xs = map (edge ◅_) (Rⱼ dequeued)}) ⟨$⟩ π∈Rq
    go π∈Rq | yes _ | no ¬p | inj₁ x = AnyP.++ˡ x
    go π∈Rq | yes _ | no ¬p | inj₂ y =
      AnyP.++ʳ (map (edge ◅_) (Rⱼ dequeued)) (R⊆D rs y)

    go π∈Rq | no _ with dequeued F≟ q
    go () | no _ | yes PEq.refl
      -- R was just cleared and nothing was added to it, so it must be empty
    go π∈Rq | no _ | no ¬p = R⊆D rs π∈Rq
      -- There was no change to either (R q) or (D q)

  Relaxed : ∀ {j k} (r : k ↝S j) {pe ne} → Edge pe ne → Set _
  Relaxed r {pe} {ne} e = pe ≡ dequeued × ne ∈ relaxed-vertices
    where open Internals-jk-from-↝ r
