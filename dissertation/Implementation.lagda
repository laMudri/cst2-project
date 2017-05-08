\chapter{Implementation}

\iffalse
\begin{code}
module Implementation where

open import Algebra
import Algebra.FunctionProperties as FunctionProperties
open import Algebra.FunctionProperties using (Op₂)
open import Algebra.Structures

open import Coinduction

open import Data.Bool
open import Data.BoundedVec.Inefficient using (toList)
open import Data.Colist using (Colist; []; _∷_)
  renaming (take to take-BoundedVec)
open import Data.Fin using (Fin)
open import Data.List using (List; []; _∷_)
open import Data.List.NonEmpty using (List⁺; _∷_)
open import Data.Nat as ℕ using (ℕ)
open import Data.Product
open import Data.Star hiding (concat)

open import Function

open import Level as L
  using (Level; _⊔_; Lift; lift)
  renaming (zero to lzero; suc to lsuc)

open import Relation.Binary using (Rel)
import Relation.Binary.EqReasoning as EqR
open import Relation.Binary.PropositionalEquality as PEq using (_≡_; subst₂)
\end{code}
\fi

In this chapter, I discuss both the Agda and Haskell implementations of Mohri's algorithm.
The majority of the work of this project has gone into the Agda implementation.
Much effort has been spent to write it in a way that allows it to be proven correct.
In contrast, the Haskell implementation can be applied to problems that will cause the algorithm to not terminate (those situations where the semiring is not $k$-closed on the graph, for example).
The division of work is reflected in the extent to which each implementation is documented in this chapter.

For the Agda implementation, the work reflects the structure of Mohri's paper~\cite{Mohri02}.
I start in \hyperref[sec:semirings]{Section \ref*{sec:semirings}} by formalising the required semiring theory, with the definition of infinite summation and hence shortest distance being a particular achievement.
Then, in \hyperref[sec:graphs]{Section \ref*{sec:graphs}}, I rigorously define the graph notions required, such as (weighted) graphs, paths, and shortest distance.
In \hyperref[sec:queues]{Section \ref*{sec:queues}}, I give a formalisation of queues, whose properties were never explicitly stated in the original paper.
\hyperref[sec:reflexive-transitive-closures]{Section \ref*{sec:reflexive-transitive-closures}} expands on the use of reflexive-transitive closures as mentioned in \hyperref[sec:graphs]{Section \ref*{sec:graphs}}, and puts them to the new use of encoding computation paths of the algorithm.
With this preparation done, \hyperref[sec:algorithm]{Section \ref*{sec:algorithm}} presents the translated algorithm, and \hyperref[sec:proofs-about-the-algorithm]{Section \ref*{sec:proofs-about-the-algorithm}} presents a proof about this algorithm.
Finally for this section of the project, I discuss the verification of a $k$-closed semiring and the actual running of the program.

After this, I explain interesting parts of the Haskell implementation in \hyperref[sec:haskell-implementation]{Section \ref*{sec:haskell-implementation}}.
To finish off, \hyperref[sec:test-data-generation]{Section \ref*{sec:test-data-generation}} discusses the generation of data used in performance testing.

The direction of the project has changed from what was proposed.
Originally, the aim was to implement Mohri's algorithm and prove it correct, following the proof of Theorem 1 in~\cite{Mohri02}.
However, I encountered various difficulties in formalising the proofs.
Presented in the following is the development of the underlying theory, culminating in an implementation of the algorithm and proof of Lemma 6.
In view of the difficulties, I focus more on the unverified Haskell implementation and the performance testing on that.

\section{Semirings}\label{sec:semirings}

The paper by Mohri begins with a section establishing the required algebraic definitions and lemmas.
Some of these are relevant to the algorithm and its correctness proof, and others are relevant to producing semirings fitting the framework.

\subsection{Definitions}

The Agda standard library~\cite{stdlib} provides a comprehensive hierarchy of definitions of algebraic structures from semigroups to commutative rings.
In particular, the \AgdaModule{Algebra} module provides a definition \AgdaDatatype{Semiring} which matches the semiring definition given in the paper.
A difference, however, is that the Agda definition uses an arbitrary equivalence relation \AgdaField{\_≈\_}, rather than propositional equality \AgdaDatatype{\_≡\_}.
This is because Agda, being an intensional type theory, has no \emph{quotienting} mechanism for propositional equality.
For example, when defining integers modulo $m$ as integers up to the equivalence relation that $x$ and $y$ are equivalent iff $\exists d.~x = d \times m + y$ , we must compare integers modulo $m$ using this new equivalence relation, rather than \AgdaDatatype{\_≡\_}.
Then, if we want to show that integers modulo $m$ form some algebraic structure, we will set the \AgdaField{\_≈\_} field to our defined equivalence relation, and prove properties up to this equivalence relation.
This is one approach amongst many in type theory, known as the \emph{setoid} approach~\cite{Barthe03}.

The next stage is to give definitions for properties a given semiring may have.
For example, Definition 2 from the paper defines that an \emph{idempotent} semiring is a semiring such that each element $a$ satisfies $a \oplus a = a$.
I could have kept to the style of the \AgdaModule{Algebra} module, producing a record type \AgdaDatatype{IdempotentSemiring} comparable to \AgdaDatatype{CommutativeSemiring}.
Such a definition is given in the following.

\begin{code}
record IsIdempotentSemiring
         {a ℓ} {A : Set a} (≈ : Rel A ℓ)
         (+ * : Op₂ A) (0# 1# : A) : Set (a ⊔ ℓ) where
  open FunctionProperties ≈
  field
    idempotent : Idempotent +
    isSemiring : IsSemiring ≈ + * 0# 1#

record IdempotentSemiring (c ℓ : Level) : Set (lsuc (c ⊔ ℓ)) where
  field
    Carrier              : Set c
    _≈_                  : Rel Carrier ℓ
    _+_                  : Op₂ Carrier
    _*_                  : Op₂ Carrier
    0#                   : Carrier
    1#                   : Carrier
    isIdempotentSemiring : IsIdempotentSemiring _≈_ _+_ _*_ 0# 1#
\end{code}

However, this had two problems.
First, we use various different combinations of properties like idempotency, monotonicity, boundedness, et cetera in each lemma, meaning that we would have a lot of types with names like \AgdaDatatype{NegativeIdempotentMonotonicSemiring} that each get minimal use.
This also runs contrary to how an ordinary mathematician treats these properties.
Though a clear distinction is made between semirings, rings, and fields, for example, idempotent semirings are primarily considered to be a kind of semiring.
The second problem is exhibited by Lemma 3, which states that a bounded semiring is idempotent.
A na\"ive translation of this into a declaration would be the following.

\iffalse
\begin{code}
record IsBoundedSemiring
         {a ℓ} {A : Set a} (≈ : Rel A ℓ)
         (+ * : Op₂ A) (0# 1# : A) : Set (a ⊔ ℓ) where
  open FunctionProperties ≈
  field
    bounded : Zero 1# +
    isSemiring : IsSemiring ≈ + * 0# 1#

record BoundedSemiring (c ℓ : Level) : Set (lsuc (c ⊔ ℓ)) where
  field
    Carrier              : Set c
    _≈_                  : Rel Carrier ℓ
    _+_                  : Op₂ Carrier
    _*_                  : Op₂ Carrier
    0#                   : Carrier
    1#                   : Carrier
    isBoundedSemiring : IsBoundedSemiring _≈_ _+_ _*_ 0# 1#
\end{code}
\fi
\begin{code}
lemma3′ : ∀ {c ℓ} → BoundedSemiring c ℓ → IdempotentSemiring c ℓ
\end{code}

However, this says only that given a bounded semiring, we can produce an idempotent semiring.
It says nothing about the relationship between these two semirings (except that the level parameters match), and we can return whatever idempotent semiring we want.
For example, we can satisfy this definition with the trivial semiring on the one-element type.

I begin the example with definitions of the one-element type \AgdaDatatype{⊤}, the always-true relation \AgdaFunction{Always}, the binary operator \AgdaFunction{const-Op₂} \AgdaBound{x} that always returns a value \AgdaBound{x}, and some helper functions for lifting relations and operators to higher levels.

\begin{code}
record ⊤ : Set where
  constructor tt

Always : ∀ {a} {A : Set a} → Rel A lzero
Always = λ _ _ → ⊤

const-Op₂ : ∀ {a} {A : Set a} (x : A) → Op₂ A
const-Op₂ x = λ _ _ → x

Lift-Rel : ∀ {a ℓ} a′ ℓ′ {A : Set a} → Rel A ℓ → Rel (Lift {a} {a′} A) (ℓ ⊔ ℓ′)
Lift-Rel {a} {ℓ} a′ ℓ′ R (lift x) (lift y) = Lift {ℓ} {ℓ′} (R x y)

Lift-Op₂ : ∀ {a a′} {A : Set a} → Op₂ A → Op₂ (Lift {a} {a′} A)
Lift-Op₂ f (lift x) (lift y) = lift (f x y)
\end{code}

I use a \AgdaKeyword{postulate} block to omit the long but simple proof that \AgdaDatatype{⊤}, lifted to arbitrary level, forms a semiring.
A postulate is an unchecked assertion that a type is inhabited.
If a running program were to try to evaluate a postulated value, it would fail.

\begin{code}
postulate ⊤-isSemiring : ∀ c ℓ → IsSemiring  (Lift-Rel c ℓ Always)
                                             (Lift-Op₂ (const-Op₂ tt))
                                             (Lift-Op₂ (const-Op₂ tt))
                                             (lift tt)
                                             (lift tt)
\end{code}

Finally comes our bad proof of lemma 3.

\begin{code}
lemma3′ _ = record
  { Carrier = Lift ⊤
  ; _≈_ = Lift-Rel _ _ Always
  ; _+_ = λ _ _ → lift tt
  ; _*_ = λ _ _ → lift tt
  ; 0# = lift tt
  ; 1# = lift tt
  ; isIdempotentSemiring = record
    { idempotent = λ _ → lift tt
    ; isSemiring = ⊤-isSemiring _ _
    }
  }
\end{code}

That a bad proof is accepted means that our original statement was wrong.
We are not able to use this lemma in the expected way because it does not prove the right thing.
What we really wanted to prove is something like the following.

\begin{code}
lemma3″ : ∀ {a ℓ} {A : Set a} {≈ : Rel A ℓ} {+ * : Op₂ A} {0# 1# : A} →
          IsBoundedSemiring ≈ + * 0# 1# → IsIdempotentSemiring ≈ + * 0# 1#
\end{code}

\iffalse
\begin{code}
lemma3″ {A = A} {≈} {_+_} {_*_} {0#} {1#}
        record { bounded = bounded ; isSemiring = isSemiring } = record
  { idempotent = λ a → begin
    a + a                ≈⟨ (let p = sym (proj₂ *-identity a) in +-cong p p) ⟩
    (a * 1#) + (a * 1#)  ≈⟨ sym (proj₁ distrib a 1# 1#) ⟩
    a * (1# + 1#)        ≈⟨ *-cong refl (proj₁ bounded 1#) ⟩
    a * 1#               ≈⟨ proj₂ *-identity a ⟩
    a                    ∎
  ; isSemiring = isSemiring
  }
  where
  open IsSemiring isSemiring
  open EqR (record { Carrier = A ; _≈_ = ≈ ; isEquivalence = isEquivalence })
\end{code}
\fi

However, introducing all of the fields (\AgdaBound{A}, \AgdaBound{≈}, et cetera) for each proof creates a lot of repetition, mirroring the repetition found in definitions like those of \AgdaDatatype{IsIdempotentSemiring} and \AgdaDatatype{IdempotentSemiring}.
What immediately follows will fix this issue.

I make use of a parametrised module to define properties a semiring may have.
To start, I introduce a new module \AgdaModule{Definitions} parametrised on a semiring, whose fields I place in scope of the module.
In my source code, this is found in the module \AgdaModule{Semiring.Definitions}.

\begin{code}
module Definitions {c ℓ} (K : Semiring c ℓ) where
  open Semiring K
\end{code}

Everything in this module now has access to the operations of the semiring \AgdaBound{K}.
As in the definition of \AgdaDatatype{IsIdempotentSemiring}, I use the \AgdaFunction{Idempotent} definition from \AgdaModule{Algebra.FunctionProperties} instantiated at the equivalence relation \AgdaField{\_≈\_}.

\begin{code}
  module FP = FunctionProperties _≈_
\end{code}

Finally, I give the definition of what it means for \AgdaBound{K} to be idempotent.
Being idempotent is a proposition, so is represented by the type of its proofs.
I get Agda to infer the correct level of this type.

\begin{code}
  Idempotent : Set _
  Idempotent = FP.Idempotent _+_
\end{code}

Given how short this definition is, it is practical to show the definition of \AgdaFunction{Bounded} as well.

\begin{code}
  Bounded : Set _
  Bounded = FP.Zero 1# _+_
\end{code}

This follows the definition of boundedness given in Table \ref{tab:properties} --- a semiring is bounded if $\bar 1$ is an annihilator for $\oplus$, meaning that, for all $a$, $\bar 1 \oplus a = \bar 1$.
The Agda standard library uses the name \AgdaFunction{Zero} rather than \AgdaFunction{Annihilator}.

To use these in a new module, we open both \AgdaModule{Semiring} and \AgdaModule{Definitions} instantiated at the same semiring \AgdaBound{K}.
Then, we can write in a more natural and convenient way the statement that a bounded semiring is idempotent.

\begin{code}
module Properties {c ℓ} (K : Semiring c ℓ) where
  open Semiring K
  open Definitions K

  lemma3 : Bounded → Idempotent
\end{code}

\subsection{Equational reasoning syntax}

I start this section motivated by the task of proving \AgdaFunction{lemma3}, as stated at the end of the previous section.
I aim to do this in a way that produces a proof recognisably similar to a traditional written proof, so as to make the proof understandable at a high level.
Thus, we first consult the proof of Lemma 3 given in section 1 of~\cite{Mohri02}, and elaborate it to a level required for formalisation.

Given the assumption of boundedness, I show idempotency by the following series of equations.

\begin{align*}
&a \oplus a
\\
&\quad =\langle \bar 1\text{ is the identity of }\otimes \rangle
\\
&(\bar 1 \otimes a) \oplus (\bar 1 \otimes a)
\\
&\quad =\langle \otimes\text{ distributes over }\oplus \rangle
\\
&(\bar 1 \oplus \bar 1) \otimes a
\\
&\quad =\langle \text{by boundedness, }\bar 1 \oplus \bar 1 = \bar 1 \rangle
\\
&\bar 1 \otimes a
\\
&\quad =\langle 1\text{ is the identity of }\otimes \rangle
\\
&a
\\
&\quad \text{\qed}
\end{align*}

%I show that being bounded implies being idempotent as follows.
%We start by considering $a \oplus a$.
%By distributivity and the fact that $\bar 1$ is the identity for $\otimes$, $a \oplus a = a \otimes (\bar 1 \oplus \bar 1)$ for arbitrary $a$.
%We know that, for each $a$, $\bar 1 \oplus a = \bar 1$, so, in particular, $\bar 1 \oplus \bar 1 = \bar 1$.
%This gives us $a \otimes (\bar 1 \oplus \bar 1) = a \otimes \bar 1$.
%Finally, $\bar 1$ is the identity for $\otimes$, so $a \otimes \bar 1 = a$.
%By the transitivity of equality, we have $a \oplus a = a \otimes (\bar 1 \oplus \bar 1) = a \otimes \bar 1 = a$, as required.

To transcribe this into Agda, I make use of combinators defined in the module \AgdaModule{Relation.Binary.EqReasoning} (which are renamings of definitions made in \AgdaModule{Relation.Binary.PreorderReasoning}).
A proof by series of equations starts with the \AgdaFunction{begin\_} operator, which extracts a proof term from an equational reasoning proof.
The \AgdaFunction{\_≈⟨\_⟩\_} operator associates right, and takes an expression \AgdaBound{x}, proof of \AgdaBound{x} \AgdaField{≈} \AgdaBound{y}, and an equational reasoning proof from \AgdaBound{y} to \AgdaBound{z}, and produces an equational reasoning proof from \AgdaBound{x} to \AgdaBound{z}.
This is justified by the transitivity of \AgdaField{\_≈\_}.
Finally, the \AgdaFunction{\_∎} operator takes an expression \AgdaBound{x} and produces an equational reasoning proof from \AgdaBound{x} to \AgdaBound{x}, justified by reflexivity of \AgdaField{\_≈\_}.

In practice, these implementation details are hidden.
A proof by equational reasoning starts with \AgdaFunction{begin}, contains several expressions separated by \AgdaFunction{≈⟨} \AgdaHole{some-proof} \AgdaFunction{⟩}, and ends with \AgdaFunction{∎}.
Whitespace is used liberally to aid reading and writing in this fashion.
The promised example follows.

\iffalse
\begin{code}
  open EqR setoid
\end{code}
\fi

\begin{code}
  lemma3 bounded a = begin
    a + a                ≈⟨ +-cong a≈a*1 a≈a*1 ⟩
    (a * 1#) + (a * 1#)  ≈⟨ sym (proj₁ distrib a 1# 1#) ⟩
    a * (1# + 1#)        ≈⟨ *-cong refl (proj₁ bounded 1#) ⟩
    a * 1#               ≈⟨ proj₂ *-identity a ⟩
    a                    ∎
    where
    a≈a*1 : a ≈ a * 1#
    a≈a*1 = sym (proj₂ *-identity a)
\end{code}

The direction of the proof is set out to the left in the chain of equivalent expressions.
To the right are the proofs that the expression on one line is equivalent to the expression on the next.
%I do not have the space to explain these proofs, but of interest is that the hypothesis \AgdaBound{bounded} is used on the third line, and lets us say that \AgdaField{1\# + 1\# ≈ 1\#}.

Todo: explain.

\subsection{Infinite sums}\label{sec:infinite-sums}

Definition of finite sums is unproblematic.
Specifically, I define that a list of elements can be summed together using the following.

\begin{code}
  ∑ : List Carrier → Carrier
  ∑ []        = 0#
  ∑ (a ∷ as)  = a + ∑ as
\end{code}

Infinite (countable) sums are more difficult to define.
For one thing, an infinite sum is not guaranteed to be defined, and in general, a proof is required to show that a specific infinite sum exists.
This means that we cannot define infinite summation as a function on an infinite sequence, even if we allow such a function to return a failure value.
We can show this by reduction to the halting problem.
Suppose we have a function that takes a sequence of natural numbers and tells us whether this sequence has a sum.
For a given Turing machine, we define a sequence that is 1 for each step of the machine, and 0 for any steps after the machine halts.
The sequence has a sum exactly when the machine halts (that sum being the number of steps the machine took), so our infinite sum function solves the halting problem.

Additionally, infinite sums are never explicitly defined in~\cite{Mohri02}, so I can only infer a definition from how infinite sums are used in the paper.
Finally, Definition 7 of~\cite{Mohri02} requires that we must have a notion of summation for \emph{potentially} infinite sequences.

With these concerns in mind, I consider what should be the definition of $s = \bigoplus_{n=0}^\infty a_n$.
In real analysis, such a relation would be defined using \emph{limits}.
Specifically, we say that $s = \sum_{i=0}^\infty x_i$, for real sequence $(x_i)_i$ if
$$\forall \epsilon > 0.~\exists N.~\forall n \geq N.~\left| s - \sum_{i=0}^n x_i \right| < \epsilon.$$
However, not all semirings have a suitable notion of order as required to use $<$.
Therefore, instead of allowing error $\epsilon$, I state that there must be some partial sum $\bigoplus_{i=0}^N$ after which adding any further terms does not change the sum.
This is expressed as
$$\exists N.~\forall n \geq N.~s = \bigoplus_{i=0}^n a_i.$$
This definition makes sense if we consider the case where $\oplus$ is $\min$.
For real numbers, our definition would mean that the sequence has to become constantly 0 after some point, because the only way to have $x + y = x$ is to have $y = 0$.
On the other hand, $\min(x,y) = x$ may hold for many different values of $y$, namely all values greater or equal to $x$.

An interesting consequence of this definition is that the order of the sequence being summed does not matter.
This is in contrast to the infinite series of real analysis, where order may matter.
The reason for the difference is that the infinite sums defined here are really finite sums, whereas the same is not true of real series.
A rigorous proof follows.

Suppose that $s = \bigoplus_{i=0}^\infty{a_i}$, and $\sigma : \mathbb N \leftrightarrow \mathbb N$ is a permutation of the natural numbers.
From our definition of infinite sums, we know that there is some $N$ such that $s = \bigoplus_{i=0}^N{a_i}$.
Then, we define $N'$ as the smallest number such that $[0 .. N] \subseteq \sigma([0 .. N'])$ (where, for set $X$, $f(X) := \{ f(x) \mid x \in X \}$).
By the \emph{finite} reordering justified by the associativity and commutativity of $\oplus$, $\bigoplus_{i=0}^{N'}{a_{\sigma(i)}} = \bigoplus_{i \in \sigma([0 .. N'])}{a_i} = \bigoplus_{i=0}^N{a_i} \oplus \bigoplus_{i \in \sigma([0 .. N']) \setminus [0 .. N]}{a_i}$.
The first term of this is $s$, and we know that $s \oplus a_i = s$ for any $i > N$, so $\bigoplus_{i=0}^{N'}{a_{\sigma(i)}} = s$.
Furthermore, for $i > N'$, $\sigma(i) > N$, so by the same reasoning, for all $n > N'$, $\bigoplus_{i=0}^n{a_{\sigma(i)}} = s$.
The combination of the last two sentences gives what we need to conclude that $s = \bigoplus_{i=0}^\infty{a_{\sigma(i)}}$, as required.

Independence of order is important in formalising the the paper~\cite{Mohri02} because it is assumed at several points, particularly in Section 2.
We consider sums over all paths through a graph, with no order specified.
Particularly, the order of the sequence of paths used to define the problem (shortest distance) may be different from the order given by $P_k(q)$, which is part of the solution to the problem.
Independence of order justifies summing over countable sets, so these concerns are no longer relevant.

A minor change I make to the definition before formalising in Agda is to replace the quantification $\forall n \geq N$.
Note that this is comparison between natural numbers (sequence indices), thus does not require the semiring to have an order relation.
However, quantification over all values satisfying a proposition has to be paraphrased as a quantification and an implication.
Specifically,
$$\exists N.~\forall n.~n \geq N \implies s = \bigoplus_{i=0}^n a_i.$$
In Agda, dealing with inequalities between natural numbers is often more work than necessary.
To remove $n \geq N$, we introduce natural number $k$ such that $k + N = n$.
This gives
$$\exists N.~\forall k.~s = \bigoplus_{i=0}^{k + N} a_i.$$

Finally, we must deal with the possibility of the sequence of elements being finite.
I choose to do this by representing the sequence as a \AgdaDatatype{Colist}, explained in Section \ref{sec:termination-and-productivity}.
I define the following helper function.

\begin{code}
  take : ∀ {a} {A : Set a} → ℕ → Colist A → List A
  take ℕ.zero     xs        = []
  take (ℕ.suc n)  []        = []
  take (ℕ.suc n)  (x ∷ xs)  = x ∷ take n (♭ xs)
\end{code}

This resembles the standard \AgdaFunction{take} function returning the first \AgdaBound{n} elements of a list, except that now we take a possibly finite \AgdaDatatype{Colist}.
The \AgdaField{♭} function is used to force evaluation of the head of \AgdaBound{xs}.
Forcing is enforced by the type system --- \AgdaField{♭} has type \AgdaDatatype{∞} \AgdaBound{A} \AgdaSymbol{→} \AgdaBound{A} for any \AgdaBound{A}.

With this, we can make the definition of infinite summation.

\begin{code}
  record ∑∞ (as : Colist Carrier) (∑as : Carrier) : Set (c ⊔ ℓ) where
    field
      N : ℕ
      converges : ∀ k → ∑ (take (k ℕ.+ N) as) ≈ ∑as
\end{code}

The proposition $\bigoplus_{i \in I} a_i = s$ is stated as a relation between $a$ and $s$.
This relation can be proven to be a partial function, but Agda has no language features distinguishing partial functions from general relations.
For a sequence \AgdaBound{as} and an element \AgdaBound{∑as}, the relation \AgdaDatatype{∑∞} \AgdaBound{as} \AgdaBound{∑as} holds whenever we have an \AgdaField{N} such that, for any finite prefix of \AgdaBound{as} of length \AgdaBound{k} \AgdaPrimitive{ℕ.+} \AgdaField{N}, the sum of that prefix is \AgdaBound{∑as}.

\section{Graphs}\label{sec:graphs}

Before presenting an algorithm, we must define what a weighted graph is.
Also, we must define several other notions, such as edges and paths, in order to reason about the algorithm.

\subsection{The \AgdaDatatype{Graph} type family}

The common notion of a weighted graph is defined as follows.
For finite set $V$, subset $E$ of $V \times V$, and function $w : E \to \mathbb K$, $(V,E,w)$ is a graph weighted by $\mathbb K$.
This definition could, in principle, be translated directly into Agda.
However, in order to ease proving, I choose a simpler definition.
Each of these simplifications is done without loss of generality.

First, instead of having a set $V$ and then imposing the restriction that $V$ is finite, I state that $V$ must be amongst the canonical family of finite sets \AgdaDatatype{Fin}.
For the algorithm, all that matters about $V$ is the number of distinct elements it has.
\AgdaDatatype{Fin} \AgdaBound{n} has \AgdaBound{n} elements, so this is enough to capture the important information of $V$.
By definition, a finite set is a type that is in bijection with \AgdaDatatype{Fin} \AgdaBound{n} for some \AgdaBound{n}.
We can use this bijection to produce a bijection between graphs with vertices $V$ and graphs with vertices \AgdaDatatype{Fin} \AgdaBound{n}, thus showing that the associated problems are equivalent.

Second, I take $E$ to be $V \times V$.
Given that the semiring framework guarantees the weight $\bar 0$, we can always introduce an edge with weight $\bar 0$, which will not affect any shortest distances.
Recall that, for any weight $a$, $\bar 0 \otimes a = a \otimes \bar 0 = \bar 0$, so any path involving an edge of weight $\bar 0$ will have weight $\bar 0$, and $\bar 0 \oplus a = a \oplus \bar 0 = a$, so any such path will not be chosen above another path.
However, this does cause the algorithm to behave differently, as previously unconnected vertices are now added to the queue of vertices to be considered.

Third, as a notational convenience, I express $w$ as a Curried function.
Remember that $w$ is a function of type $E \to \mathbb K$, which, with the two previous simplifications, becomes $\AgdaDatatype{Fin}~\AgdaBound{n} \times \AgdaDatatype{Fin}~\AgdaBound{n} \to \mathbb K$.
This is equivalent to $\AgdaDatatype{Fin}~\AgdaBound{n} \to \AgdaDatatype{Fin}~\AgdaBound{n} \to \mathbb K$, and the latter type allows us to omit the brackets and comma when applying $w$.

Finally, I move \AgdaBound{n} from the value to the type, so that \AgdaDatatype{Graph} \AgdaBound{n} is the type of graphs with \AgdaBound{n} vertices (much like \AgdaDatatype{Vec} \AgdaBound{A} \AgdaBound{n} being the type of vectors of length \AgdaBound{n}).
All of this means that a graph of a particular size is specified entirely by the weight function $w$.
An explicit definition is as follows, where \AgdaField{Carrier} is the carrier set of the ambient semiring introduced in the previous section.

\begin{code}
  Graph : ℕ → Set _
  Graph n = Fin n → Fin n → Carrier
\end{code}

\subsection{Edges and paths}\label{sec:edges-and-paths}

An edge is specified by an ordered pair of vertices.
Going back to the usual presentation of graphs, where $E \subseteq V \times V$, we can think of $E$ as a binary relation on $V$.
For vertices $q$ and $q'$, we may say $qEq'$ if the pair $(q, q')$ corresponds to an edge in the graph.
Matching this, I introduce the type family \AgdaDatatype{Edge}, which is a binary relation on \AgdaDatatype{Fin} \AgdaBound{n} for module-bound \AgdaBound{n}.

\iffalse
\begin{code}
open Properties

module WithG {c ℓ n} (K : Semiring c ℓ) (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
\end{code}
\fi

\begin{code}
  record Edge (q q′ : Fin n) : Set L.zero where
    constructor edge
\end{code}

Notice that, because I set $E = V \times V$, \AgdaDatatype{Edge} is always inhabited.
\AgdaDatatype{Edge} \AgdaBound{q} \AgdaBound{q′} contains no information, and rather acts as a relation for convenience.

Another relation is reachability.
A vertex $q$ can reach a vertex $q'$ iff there is a sequence of zero or more edges which join up to take us from $q$ to $q'$, possibly via intermediate vertices.
The set of proofs that $q$ can reach $q'$ is exactly the set of paths from $q$ to $q'$.

To formalise the notion of edges joining up, the standard library defines a type family \AgdaDatatype{Star} in the \AgdaModule{Data.Star} module.
The name is in reference to the notation $R^*$ for the reflexive-transitive closure of relation $R$.
\AgdaDatatype{Star} has a constructor \AgdaInductiveConstructor{ε}, proving that, for any $x$, $xR^*x$, and a constructor \AgdaInductiveConstructor{\_◅\_}, which says that given $xRy$ and $yR^*z$, we can conclude $xR^*z$.
A useful function given to us is \AgdaFunction{\_◅◅\_}, which concatinates a proof of $xR^*y$ and a proof of $yR^*z$ into a proof of $xR^*z$.

In working with paths, I tend to require use of the rule that given a path from $s$ to $q$ and an edge from $q$ to $q'$, I have a path from $s$ to $q'$.
That is, I more often work at the far end of a path rather than the near end.
For this reason, I introduce a type family \AgdaDatatype{Starˡ}.

\begin{code}
  Starˡ : ∀ {i r} {I : Set i} (R : Rel I r) → Rel I (i ⊔ r)
  Starˡ R = flip (Star (flip R))
\end{code}

The function \AgdaFunction{flip} turns a relation into its opposite (in the sense that $xR^\mathrm{op}y$ iff $yRx$).
The double flipping here has the effect that \AgdaDatatype{Starˡ} \AgdaBound{R} \AgdaBound{x} \AgdaBound{y} is equivalent to \AgdaDatatype{Star} \AgdaBound{R} \AgdaBound{x} \AgdaBound{y}, but a proof of \AgdaDatatype{Starˡ} \AgdaBound{R} \AgdaBound{x} \AgdaBound{y} builds from $x$ forward to $y$, whereas a proof of \AgdaDatatype{Star} \AgdaBound{R} \AgdaBound{x} \AgdaBound{y} builds backwards from $y$ to $x$.
This is similar to the relationship between snoc-lists and regular cons-lists.
Note that we can still use the constructors and functions for \AgdaDatatype{Star}, but working out the types in terms of \AgdaDatatype{Starˡ} may take some consideration.
For example, \AgdaInductiveConstructor{\_◅\_} takes a proof of $yRz$ on the left and a proof of $xR^*y$ on the right to produce a proof of $xR^*z$.
If \AgdaDatatype{Starˡ} \AgdaBound{R} \AgdaBound{x} \AgdaBound{y} is written $x \leadsto y$, \AgdaFunction{\_◅◅\_} takes a $y \leadsto z$ and an $x \leadsto y$, and produces an $x \leadsto z$.
This resembles function composition.

This gives us a simple definition of reachability, i.e., the set of paths between two fixed vertices.

\begin{code}
  Path : Rel (Fin n) _
  Path = Starˡ Edge
\end{code}

Definitions using \AgdaDatatype{Edge} and \AgdaDatatype{Path} include functions for getting the distance of an edge and a path, given a graph \AgdaBound{G}.

\begin{code}
  edge-weight : ∀ {q q′} → Edge q q′ → C
  edge-weight {q} {q′} _ = G q q′

  path-weight : ∀ {q q′} → Path q q′ → C
  path-weight ε        = 1#
  path-weight (e ◅ π)  = edge-weight e * path-weight π
\end{code}

%\subsection{Sets of paths}

\subsection{Shortest distance}

I use the alternate definition of shortest distance suggested by the footnote in Section 2 of~\cite{Mohri02} as the basis for my definition.
This removes the special case for the source vertex, leaving the following definition for $\delta(s, q)$, the shortest distance from $s$ to $q$.

\begin{align*}
\delta(s, q) = \bigoplus_{\pi \in P(q)}{w[\pi]}
\end{align*}

This is an infinite sum over $P(q)$, the set of all paths from $s$ to $q$ (including arbitrarily many cycles).
From Section \ref{sec:infinite-sums}, we have a definition of infinite summation, where \AgdaDatatype{∑∞} \AgdaBound{as} \AgdaBound{s} holds iff $\bigoplus \mathit{as} = s$.
Thus, the remaining component is $P(q)$.

The \emph{type} of all paths from \AgdaBound{s} to \AgdaBound{q} is simply \AgdaFunction{Path} \AgdaBound{s} \AgdaBound{q}.
However, our notion of summation requires a \AgdaDatatype{Colist} of elements, so we need an explicit construction that produces all paths in some order.
This is what is achieved by \AgdaFunction{all-paths-from-to} from \AgdaModule{Graph.Definitions}.
The trivial path \AgdaInductiveConstructor{ε} is special in that it is only a path from \AgdaBound{q} to \AgdaBound{q′} if \AgdaBound{q} \AgdaDatatype{≡} \AgdaBound{q′}.
On the other hand, for each length greater than or equal to 1, there is always at least 1 path of that length from \AgdaBound{q} to \AgdaBound{q′}.
This follows from our definition of \AgdaDatatype{Graph}, where there is necessarily an edge between any two (possibly equal) vertices.

The fact that we can produce these mutually exclusive \emph{inhabited} classes of paths is important for satisfying the productivity requirement of colists.
The standard library contains the following definition in \AgdaModule{Data.Colist}.

\begin{code}
concat : ∀ {a} {A : Set a} → Colist (List⁺ A) → Colist A
concat []                     = []
concat ((x ∷ [])      ∷ xss)  = x ∷ ♯ concat (♭ xss)
concat ((x ∷ y ∷ xs)  ∷ xss)  = x ∷ ♯ concat ((y ∷ xs) ∷ xss)
\end{code}

Here, \AgdaRecord{List⁺} is the type of inhabited lists, as defined in \AgdaModule{Data.List.NonEmpty}.
A value of type \AgdaRecord{List⁺} \AgdaBound{A} is essentially a pair of an \AgdaBound{A} and a \AgdaDatatype{List} \AgdaBound{A}.
The function \AgdaFunction{concat} takes a colist of inhabited lists and flattens it out into a colist containing all of the items that were originally in the lists.
A similar function with \AgdaRecord{List⁺} replaced by \AgdaDatatype{List} is impossible, because we could feed it with the colist that is the infinite repetition of the empty list, and it would produce neither \AgdaInductiveConstructor{[]} nor \AgdaInductiveConstructor{\_∷\_} in any finite time.

Using the \AgdaFunction{concat} function, the colist of all paths from \AgdaBound{q} to \AgdaBound{q′} is expressed as \AgdaInductiveConstructor{ε}, if \AgdaBound{q} \AgdaDatatype{≡} \AgdaBound{q′}, followed by the concatenation of all paths of length \AgdaInductiveConstructor{suc} \AgdaBound{l} for increasing natural number \AgdaBound{l}.
The inhabited list of all paths from \AgdaBound{q} to \AgdaBound{q′} of length \AgdaInductiveConstructor{suc} \AgdaBound{l} is given by \AgdaFunction{all-paths-of-suc-length-from-to}.
This is defined recursively on \AgdaBound{l}.
When \AgdaBound{l} is \AgdaInductiveConstructor{zero} (corresponding to paths of length 1), there is only one path, which is the single edge from \AgdaBound{q} to \AgdaBound{q′}.
When \AgdaBound{l} is \AgdaInductiveConstructor{suc} \AgdaBound{l} and we are going from \AgdaBound{q} to \AgdaBound{q″}, we pick each possible intermediate vertex \AgdaBound{q′}, get all the paths of length \AgdaInductiveConstructor{suc} \AgdaBound{l} from \AgdaBound{q} to \AgdaBound{q′} by recursion, and extend each of these with an edge from \AgdaBound{q′} to \AgdaBound{q″}.

\section{Queues}\label{sec:queues}

Mohri's algorithm is generic in the queueing discipline used to keep the vertices to be explored.
From the algorithm, we see that a queue supports being assigned a singleton (Line 4), test for emptiness (Line 5), extracting of items (Lines 6-7), test for membership (Line 14), and inserting of items (Line 15).
However, the properties governing these operations are not stated, and must be inferred from the proof.

The termination proof of the algorithm has the following form --- there are finitely many insertions into $S$; on each iteration, there is an extraction; therefore, there are finitely many iterations.
This means that the number of items the queue contains is a property we are interested in, and should be part of our definition of a queueing discipline.
Furthermore, insertion adds 1 to the number of items, and extraction subtracts 1.
We can also note that a queue must have at least one item for extraction to be well defined.

A fact we should take account of in order to maintain the generality of the queueing discipline is that a queueing discipline is not, in general, parametric in the type of items it contains.
A parametric queueing discipline is unable to use the values of the items to decide their priority, so is constrained to behaviours like LIFO and FIFO.
Instead, I state that a queueing discipline is of a particular item type, with the type of the container specified as part of the discipline.

Bringing these together leads to the following definition.

\begin{code}
data Is-suc : ℕ → Set where
  is-suc : ∀ {n} → Is-suc (ℕ.suc n)

record QueueDiscipline {a} (A : Set a) ℓ : Set (a ⊔ lsuc ℓ) where
  field
    Carrier : Set ℓ
    count : Carrier → ℕ
    empty : Carrier
    enqueue : A → Carrier → Carrier
    dequeue : (q : Carrier) → Is-suc (count q) → A × Carrier
    contains : A → Carrier → Bool

    empty-zero : count empty ≡ ℕ.zero
    enqueue-suc : ∀ a q → count (enqueue a q) ≡ ℕ.suc (count q)
    dequeue-pred : ∀ q s → ℕ.suc (count (proj₂ (dequeue q s))) ≡ count q
\end{code}

\AgdaDatatype{Is-suc} is introduced in order to express that a queue is non-empty.
\AgdaDatatype{Is-suc} \AgdaBound{m} represents the proposition that \AgdaBound{m} is of the form \AgdaInductiveConstructor{ℕ.suc} \AgdaBound{n}, for some \AgdaBound{n} --- that is, \AgdaBound{m} is greater or equal to 1.

The main definition is of \AgdaDatatype{QueueDiscipline} \AgdaBound{A} \AgdaBound{ℓ} --- the type of queue disciplines for items of type \AgdaBound{A} at level \AgdaBound{ℓ}.
The fields are as follows.
\AgdaField{Carrier} is the type of the underlying container.
This will usually be a data structure containing values of type \AgdaBound{A}.
\AgdaField{count} is a function that tells us how many items this structure contains.
\AgdaField{empty} creates a new queue with no items.
\AgdaField{enqueue} does a functional update to a queue, inserting an item into it.
\AgdaField{dequeue} takes a queue with at least one item and extracts an item.
It returns both that item and the new queue without the item.
Finally, \AgdaField{contains} indicates whether an item is in a queue.

The remaining fields are properties that should hold about \AgdaField{count}.
An empty queue contains 0 items.
A queue created by enqueueing a new item has one more item than the original queue.
And a queue created by dequeueing an item has one fewer item than the original queue.

%To start,
%The assumption in the paper is that a queue is a finite multiset with specified extraction order.

\section{Reflexive-transitive closures}\label{reflexive-transitive-closures}

We have seen reflexive-transitive closures used to define paths in terms of edges in Section \ref{sec:edges-and-paths}.
For a relation \AgdaBound{R}, \AgdaFunction{Starˡ} \AgdaBound{R} is the reflexive-transitive closure of \AgdaBound{R} --- that is, the smallest relation containing \AgdaBound{R} which is reflexive and transitive.

This notion is also useful when dealing with computations.
Suppose we have a type \AgdaBound{I} of codes for programs.
Suppose further that \AgdaBound{\_↝\_} is a binary relation on \AgdaBound{I}.
The intended meaning is that for \AgdaBound{i} and \AgdaBound{j} of type \AgdaBound{I}, \AgdaBound{i} \AgdaBound{↝} \AgdaBound{j} if \AgdaBound{i} can reduce in a single step to \AgdaBound{j}.
Then, \AgdaFunction{Starˡ} \AgdaBound{\_↝\_} \AgdaBound{i} \AgdaBound{j} holds whenever \AgdaBound{j} is an intermediate state in the computation of \AgdaBound{i}.
Furthermore, any proof of \AgdaFunction{Starˡ} \AgdaBound{\_↝\_} \AgdaBound{i} \AgdaBound{j} retains \emph{how} \AgdaBound{i} reduced to \AgdaBound{j}.

This data structure is useful when reasoning about the history of a computation.
In this project, I take the type of programs \AgdaBound{I} to be the state of the algorithm, \AgdaDatatype{Alg-state} \AgdaFunction{×} \AgdaDatatype{Helper-sets}, and any two states are related if they are the states obtained before and after a single iteration of the while loop.
A typical statement concerning the history of such a computation can be found in the proof of Lemma 6 (see Section 3 of~\cite{Mohri02}): ``$\pi$ is in $R(p[e])$ at the time of the previous extraction of $p[e]$''.
To express this formally, we start with two states: \AgdaFunction{I₀}, the initial state of the algorithm; and \AgdaBound{i}, the state in consideration for the lemma.
We know that \AgdaBound{i} was reached at some step of the algorithm, so we have a proof of \AgdaFunction{Starˡ} \AgdaFunction{\_↝\_} \AgdaFunction{I₀} \AgdaBound{i}.
Given this, we want to find an iteration within this computation at which $p[e]$ was extracted.

To talk about iterations within a computation, I adapt some of the definitions from the standard library's \AgdaModule{Data.List.Any} to the \AgdaDatatype{Star} type.
These are available in full in the \AgdaModule{Star.TransitionMembership} module, which is parametrised over \AgdaBound{I}, the type of states; and \AgdaBound{T}, the transition relation between these states.

The definitions are in terms of \AgdaDatatype{Star}, but \AgdaFunction{Starˡ} is defined using \AgdaDatatype{Star}, so the definitions carry over automatically.
To avoid confusion, I use the words ``near'' and ``far'', rather than ``left'' and ``right''.
The nearest transition in the sequence \AgdaBound{x} \AgdaInductiveConstructor{◅} \AgdaBound{xs} is \AgdaBound{x}, because it is immediately available by pattern matching.
All of the other transitions in \AgdaBound{xs} are further away.

\iffalse
\begin{code}
module TransitionMembership {i t} {I : Set i} {T : Rel I t} where
\end{code}
\fi

I start with the following definition.

\begin{samepage}
\begin{code}
  data Any  {p} (P : ∀ {j k} → T j k → Set p) :
            ∀ {j k} → Star T j k → Set (i ⊔ t ⊔ p) where
    here   :  ∀ {j k l} {x : T j k} {xs : Star T k l}
              (px : P x) → Any P (x ◅ xs)
    there  :  ∀ {j k l} {x : T j k} {xs : Star T k l}
              (pxs : Any P xs) → Any P (x ◅ xs)
\end{code}
\end{samepage}

Throughout the definition, and this section, \AgdaBound{j}, \AgdaBound{k}, and \AgdaBound{l} are states (i.e., of type \AgdaBound{I}).
The type \AgdaDatatype{Any} \AgdaBound{P} \AgdaBound{xs}, for predicate \AgdaBound{P} and \AgdaDatatype{Star} proof \AgdaBound{xs}, represents the proposition that there is some transition \AgdaBound{x} within \AgdaBound{xs} such that \AgdaBound{P} \AgdaBound{x} holds.
This is similar to the type \AgdaDatatype{Any} \AgdaBound{P} \AgdaBound{xs} for list \AgdaBound{xs}, which states that there is some element of \AgdaBound{xs} at which \AgdaBound{P} holds.
The \AgdaInductiveConstructor{here} constructor states that if \AgdaBound{P} \AgdaBound{x} holds for some transition \AgdaBound{x}, then we can construct a proof of \AgdaDatatype{Any} \AgdaBound{P} \AgdaSymbol{(}\AgdaBound{x} \AgdaInductiveConstructor{◅} \AgdaBound{xs}\AgdaSymbol{)}, where \AgdaBound{x} \AgdaInductiveConstructor{◅} \AgdaBound{xs} is, by construction, a sequence of transitions with \AgdaBound{x} at the near end.
The \AgdaInductiveConstructor{there} constructor states that if we know \AgdaDatatype{Any} \AgdaBound{P} \AgdaBound{xs}, we can add an arbitrary fitting transition \AgdaBound{x} to the near end of \AgdaBound{xs}, producing \AgdaBound{x} \AgdaInductiveConstructor{◅} \AgdaBound{xs}, and \AgdaDatatype{Any} \AgdaBound{P} \AgdaSymbol{(}\AgdaBound{x} \AgdaInductiveConstructor{◅} \AgdaBound{xs}\AgdaSymbol{)} still holds.

Using this, we can build the notion that a specific transition exists within a sequence of transitions.

\begin{code}
  [_,_]_∈_ : ∀ {j k} j′ k′ → (x : T j′ k′) (xs : Star T j k) → Set _
  [_,_]_∈_ j′ k′ x = Any (λ {j} {k} x′ →  ∃₂ λ (je : j′ ≡ j) (ke : k′ ≡ k) →
                                          subst₂ T je ke x ≡ x′)
\end{code}

This is essentially saying that \AgdaBound{x} is in \AgdaBound{xs} iff \AgdaDatatype{Any} \AgdaSymbol{(}\AgdaSymbol{λ} \AgdaBound{x′} \AgdaSymbol{→} \AgdaBound{x} \AgdaDatatype{≡} \AgdaBound{x′}\AgdaSymbol{)} \AgdaBound{xs} holds.
However, \AgdaBound{x} has type \AgdaBound{T} \AgdaBound{j′} \AgdaBound{k′}, whereas transitions \AgdaBound{x′} in \AgdaBound{xs} may have type \AgdaBound{T} \AgdaBound{j} \AgdaBound{k} for arbitrary \AgdaBound{j} and \AgdaBound{k}.
This means that \AgdaBound{x} and \AgdaBound{x′} have potentially different types, so \AgdaBound{x} \AgdaDatatype{≡} \AgdaBound{x′} is ill typed.
Thus, our predicate requires proofs \AgdaBound{je} and \AgdaBound{ke} that the endpoints of the transition under consideration \AgdaBound{x′} are the same as the endpoints of \AgdaBound{x} before \AgdaBound{x} and \AgdaBound{x′} can be compared.
When \AgdaBound{je} and \AgdaBound{ke} are both \AgdaInductiveConstructor{refl} (the only proof of an equality), \AgdaFunction{subst₂} \AgdaBound{T} \AgdaBound{je} \AgdaBound{ke} \AgdaBound{x} reduces to just \AgdaBound{x}, but crucially with the same type as \AgdaBound{x′}, so the desired comparison \AgdaBound{x} \AgdaDatatype{≡} \AgdaBound{x′} is recovered.

When we have \AgdaDatatype{Any} \AgdaBound{P} \AgdaBound{xs}, we can extract \AgdaBound{j′}, \AgdaBound{k′}, and \AgdaBound{x} such that \AgdaFunction{[} \AgdaBound{j′} \AgdaFunction{,} \AgdaBound{k′} \AgdaFunction{]} \AgdaBound{x} \AgdaFunction{∈} \AgdaBound{xs} and \AgdaBound{P} \AgdaBound{x}.
This is similar to the principle from conventional mathematics that given $\exists x \in S.~P(x)$, we can assume that we have some $x$ in the set $S$ such that $P(x)$ holds.
Thus, the following constitutes a way of using \AgdaDatatype{Any} proofs.

\begin{code}
  find :  ∀ {p} {P : ∀ {j k} → T j k → Set p} {j k} {xs : Star T j k} →
          Any P xs → ∃₂ λ j′ k′ → ∃ λ x → [ j′ , k′ ] x ∈ xs × P x
  find {j = j} {k = k} {xs = x ◅ xs} (here px) =
    _ , _ , x , (here (PEq.refl , PEq.refl , PEq.refl)) , px
  find (there pxs) with find pxs
  ... | _ , _ , x , elem , px = _ , _ , x , there elem , px
\end{code}

This states that, for a proof \AgdaInductiveConstructor{here} \AgdaBound{px}, the nearest transition \AgdaBound{x} is in the sequence of transitions, and the proof that it satisfies \AgdaBound{P} is \AgdaBound{px}.
For a proof \AgdaInductiveConstructor{there} \AgdaBound{pxs}, we make a recursive call, returning everything as-is except the membership proof \AgdaBound{elem}, where we note that, having added a new transition, \AgdaBound{x} is now one place further away.

\section{Algorithm}\label{sec:algorithm}

Mohri's algorithm is presented in Section 3 of~\cite{Mohri02}.
It maintains state in the variables $d$, $r$, and $S$, which represent the current distance estimates to each vertex, the amount of weight added to each estimate since the last extraction, and the queue of vertices to explore, respectively.
The algorithm consists of some initialisation, and then a loop on each iteration of which a vertex is extracted from the queue $S$, and zero or more vertices are inserted into the queue.
This program structure cannot be immediately transcribed into Agda, and in this section I will describe the translation I did.

\subsection{Basic algorithm}

First, I concentrate on the body of the main loop.
Whereas the original algorithm is expressed using mutable variables $d$, $r$, and $S$, I will maintain state by recursively applying a function with updated values for $d$, $r$, and $S$.
This is a standard approach in functional programming.
I combine the state into the record type \AgdaDatatype{Alg-state}, giving the names \AgdaField{known-distances}, \AgdaField{added-weight}, and \AgdaField{vertex-queue} to $d$, $r$, and $S$, respectively.

The action of a single iteration of the while loop is captured in the function \AgdaFunction{do-step}.
The line \AgdaKeyword{module} \AgdaModule{DoStep} \AgdaKeyword{where} introduces a \emph{named} where block.
This acts like an ordinary where block, but also creates the module \AgdaModule{DoStep}, available outside the definition of \AgdaFunction{do-step}.
This is important when writing proofs about \AgdaFunction{do-step}, as it gives us access to intermediate values.

The function \AgdaFunction{do-step} takes a state in which the vertex queue has items, and returns a new state.
The first two lines in the where block replicate Lines 6-7 of the pseudocode algorithm, dequeueing from \AgdaBound{S} into temporary variable \AgdaBound{q} and putting the updated queue into \AgdaBound{S₁}.
There must be a new name for the new queue because Agda does not allow mutation of variables.
Additionally, the new name is helpful when reasoning about the algorithm because we get a way of referring to the queue at different stages inside the loop.
The next two lines replicate Lines 8-9 of the algorithm, and similarly, I introduce the new name \AgdaBound{r₁} for the new value of $r$.

Lines 10-15 of the pseudocode algorithm are expressed as a for loop.
In theory, this can be translated into a fold over a list.
Specifically, $E[q]$, the set of edges leaving $q$, consists of one edge for each vertex in the graph, given that, in my implementation, all vertices are assumed to be connected.
Thus, it suffices to iterate over a list of all vertices (\AgdaFunction{allFin} \AgdaBound{n}) using \AgdaFunction{foldr}.
In practice, however, the generality of \AgdaFunction{foldr} makes it difficult to reason about.
Therefore, I split the loop to deal with the weight vectors and the queue separately.

Only a subset of $E[q]$ has anything done to it, specifically the set of edges $e$ such that $d[n[e]] \neq d[n[e]] \oplus (r' \otimes w[e])$ (Line 11).
Recalling the definition of $\leq$ from Section \ref{sec:algebraic-routing-problems}, we can rewrite this as $d[n[e]] \nleq r' \otimes w[e]$.
To convert this statement into something that can be branched on in a program, we prove that $a \nleq b$ is decidable for all $a$ and $b$.
This follows from decidability of \AgdaField{\_≈\_}, which I take as an assumption (and is, in general, not provable).
The expression \AgdaBound{a} \AgdaFunction{≤?} \AgdaBound{b} has type \AgdaDatatype{Dec} \AgdaSymbol{(}\AgdaBound{a} \AgdaFunction{≤K} \AgdaBound{b}\AgdaSymbol{)}, which can be converted to a boolean using \AgdaFunction{⌊\_⌋}.
This is how \AgdaFunction{condition} is constructed.
Then, \AgdaFunction{condition} is used to select those vertices $q'$ such that the edge $(q, q')$ needs to be relaxed, with the result assigned to \AgdaFunction{relaxed-vertices}.
Finally, amongst these vertices, only those not already in the queue are enqueued (Lines 14-15).
These vertices are enumerated in \AgdaFunction{enqueued-vertices}.

With the affected vertices listed, we can apply the updates to the state.
\AgdaBound{d} and \AgdaBound{r} are affected in the same way, so I abstract this out into the function \AgdaFunction{new-weights}.
This uses \AgdaFunction{tabulate} to describe the result vector using a function mapping indices to values.
For an index \AgdaBound{q′}, if it is in \AgdaFunction{relaxed-vertices} then it is updated by $\oplus$-adding $r' \otimes w[(q, q′)]$ (the \AgdaInductiveConstructor{yes} case).
Otherwise, it is kept as it is (the \AgdaInductiveConstructor{no} case).
This function is called on \AgdaBound{d} and our first intermediate $r$ value \AgdaFunction{r₁}, with the results bound to \AgdaFunction{d₁} and \AgdaFunction{r₂}.
The queue $S$ is updated on the final line of the \AgdaKeyword{where} block by iterating through \AgdaFunction{enqueued-vertices}, enqueueing each, in order, into \AgdaFunction{S₁}, producing result \AgdaFunction{S₂}.

\subsection{Annotated algorithm}

Many of the lemmas in~\cite{Mohri02} make use of the values $D$ and $R$, defined just after the algorithm in Section 3 of that paper.
These record the paths chosen between for each value in $d$ and $r$, respectively.
I keep these in the secondary state record \AgdaDatatype{Helper-sets}, along with fields \AgdaField{L}, \AgdaField{I}, and \AgdaField{E}, which are also used for reasoning about the algorithm.
Each of these fields is indexed by a vertex \AgdaBound{q}, and counts the occurrence of a certain event about that vertex.
The value \AgdaField{L} \AgdaBound{q} counts the number of times at which \AgdaBound{q} has been the end vertex of an edge which passed \AgdaFunction{condition}, i.e., an edge which improved a distance estimate.
The value \AgdaField{I} \AgdaBound{q} counts the number of times \AgdaBound{q} has been inserted into the queue, and \AgdaField{E} \AgdaBound{q} counts the number of times \AgdaBound{q} has been extracted from the queue.
These three pieces of state become important when reasoning about termination of the algorithm.

The loop iteration with this extra state is done by the \AgdaFunction{do-step-with-sets} function.
All of the operations on the \AgdaDatatype{Alg-state} component are the same as they were in \AgdaFunction{do-step}.
The path families $D$ and $R$ are updated as described in the paper, and temporary set \AgdaFunction{R′} is introduced parallel to \AgdaFunction{r′}.
The empty set of paths is represented by the empty list \AgdaInductiveConstructor{[]}, which has $\oplus$-sum $\bar 0$.
Union of path sets is represented by list append (\AgdaFunction{\_++\_}).
Lemma 5 shows that this is only done when the set of paths being added is disjoint from the original set, so we do not have to worry about removing duplicate entries.

For the counters, \AgdaFunction{appAt} and \AgdaFunction{appWhen}, defined in \AgdaModule{App}, are used to increment at a given vertex and at all vertices satisfying a boolean condition, respectively.
The \AgdaField{E} counter is incremented at the dequeued vertex, and \AgdaField{L} and \AgdaField{I} are updated at \AgdaBound{q′} whenever \AgdaBound{q′} satisfies \AgdaFunction{condition} and when \AgdaBound{q′} is inserted into the queue, respectively.

\subsection{Completing the loop}

To faithfully represent the while loop, we want to run \AgdaFunction{do-step} repeatedly until the queue no longer has any vertices to extract.
However, a priori, we do not know whether the queue will ever empty.
Thus, we do not know that the procedure will terminate, and this strategy will not produce a valid Agda function.
Instead, I produce a function \AgdaFunction{σ} that runs at most \AgdaBound{t} iterations of the loop, for arbitrary natural number \AgdaBound{t}.
This is clearly terminating, and moves the burden of the termination proof onto showing that the stated number of iterations is enough.
There is a similar function \AgdaFunction{σS} which keeps the \AgdaDatatype{Helper-sets} state.

The initialisation (Lines 1-4 of the pseudocode algorithm) is captured in the initial state \AgdaFunction{I₀}, with \AgdaFunction {IS₀} being the same containing the helper sets.
I omit Line 16 of the pseudocode to match the omission of the special case for the source vertex in the definition of shortest distance.
Thus, for sufficiently large \AgdaBound{t}, \AgdaFunction{σ} \AgdaBound{t} \AgdaFunction{I₀} is of the form \AgdaInductiveConstructor{alg-state} \AgdaBound{d} \AgdaBound{r} \AgdaBound{S}, with \AgdaBound{S} empty and \AgdaBound{d} containing the shortest distances from the source vertex to each vertex in the graph.
Finding a sufficiently large \AgdaBound{t} is a task for the termination proof.

\section{Proofs about the algorithm}\label{sec:proofs-about-the-algorithm}

In the source code, successful proofs about the algorithm are in the modules \AgdaModule{Algorithm.Properties} and \AgdaModule{Algorithm.Lemma6}.
The \AgdaModule{Algorithm.Lemma6} module depends upon \AgdaModule{Algorithm.Properties}, as well as most of the other modules described earlier in this chapter.
However, it makes sense to look first at the proof of Lemma 6, and then look back at what lemmas were needed for it.

Lemma 6, taken from Section 3 of~\cite{Mohri02}, states that, at any point in the execution of the algorithm, if $\pi_1\pi_2 \in D(n[\pi_2])$ then $\pi_1 \in D(n[\pi_1])$, where $n[\pi]$ is the right endpoint of path $\pi$.
I prove this in \AgdaFunction{lemma-6}, translating the statement into an Agda type as follows.
I take an \AgdaBound{i} of type \AgdaRecord{Alg-state} \AgdaFunction{×} \AgdaRecord{Helper-sets}, and assert that it is a valid state for the algorithm to be in by requiring \AgdaFunction{Reachable-with-sets} \AgdaBound{i}. This is an alias for \AgdaFunction{Starˡ} \AgdaFunction{\_↝S\_} \AgdaFunction{IS₀} \AgdaBound{i} --- a sequence of iterations of the annotated algorithm take us from the initial state \AgdaFunction{IS₀} to the current state \AgdaBound{i}.
The line \AgdaKeyword{let} \AgdaKeyword{open} \AgdaModule{Helper-sets} \AgdaSymbol{(}\AgdaField{proj₂} \AgdaBound{i}\AgdaSymbol{)} \AgdaKeyword{in} puts the \AgdaFunction{D} from state \AgdaBound{i} in scope for the rest of the type.
Then, I take path \AgdaBound{π₁} from source \AgdaBound{s} to \AgdaBound{m} and path \AgdaBound{π₂} from \AgdaBound{m} to \AgdaBound{q}.
Recall from Section \ref{sec:edges-and-paths} that the ``near'' part of a path is the part at the opposite end to \AgdaBound{s}, and thus we compose the two paths into \AgdaBound{π₂} \AgdaFunction{◅◅} \AgdaBound{π₁}.
That this is the correct way round is enforced by the type of \AgdaFunction{\_◅◅\_}, which only composes sequences in which the endpoints match up correctly.
Given this, the desired conclusion is that given \AgdaSymbol{(}\AgdaBound{π₂} \AgdaFunction{◅◅} \AgdaBound{π₁}\AgdaSymbol{)} \AgdaFunction{∈} \AgdaFunction{D} \AgdaBound{q}, we can deduce \AgdaBound{π₁} \AgdaFunction{∈} \AgdaFunction{D} \AgdaBound{m}.
Again, the type of \AgdaFunction{D} makes sure that we cannot mix up \AgdaBound{q} and \AgdaBound{m}, for example.

As in the paper, this lemma is proven by induction on \AgdaBound{π₂}.
For the trivial path \AgdaInductiveConstructor{ε}, \AgdaBound{q} unifies with \AgdaBound{m} and \AgdaBound{π₂} \AgdaInductiveConstructor{◅◅} \AgdaBound{π₁} reduces to just \AgdaBound{π₁}.
Thus, we are required to prove \AgdaBound{π₁} \AgdaFunction{∈} \AgdaFunction{D} \AgdaBound{q} \AgdaSymbol{→} \AgdaBound{π₁} \AgdaFunction{∈} \AgdaFunction{D} \AgdaBound{q}, which is trivial.

In the case of \AgdaBound{e} \AgdaInductiveConstructor{◅} \AgdaBound{π₂}, we defer to \AgdaFunction{lemma-6-step} to deduce \AgdaSymbol{(}\AgdaBound{π₂} \AgdaFunction{◅◅} \AgdaBound{π₁}\AgdaSymbol{)} \AgdaFunction{∈} \AgdaFunction{D} \AgdaSymbol{\_} from \AgdaSymbol{(}\AgdaBound{e} \AgdaInductiveConstructor{◅} \AgdaBound{π₂} \AgdaFunction{◅◅} \AgdaBound{π₁}\AgdaSymbol{)} \AgdaFunction{∈} \AgdaFunction{D} \AgdaSymbol{\_}.
Using this, we finish with the inductive hypothesis.

The lemma \AgdaFunction{lemma-6-step} has the same statement as \AgdaFunction{lemma-6}, except that the path \AgdaBound{π₂} is replaced with a single edge \AgdaBound{e}.
Most of the work of \AgdaFunction{lemma-6-step} is done by the three lemmas from \AgdaModule{Algorithm.Properties} --- \AgdaFunction{path-in-D-gives-path-in-R′}, \AgdaFunction{R⊆D}, and \AgdaFunction{D-grows}.
The latter two of these are relatively self-explanatory, though the proofs are somewhat technical.
Specifically, \AgdaFunction{R⊆D} states that for any \AgdaBound{q}, \AgdaFunction{R} \AgdaBound{q} \AgdaFunction{⊆} \AgdaFunction{D} \AgdaBound{q}.
We can see this from the fact that \AgdaFunction{R} \AgdaBound{q} is the same as \AgdaFunction{D} \AgdaBound{q} except that \AgdaFunction{R} \AgdaBound{q} is cleared whenever \AgdaBound{q} is extracted from the queue.
Then, \AgdaFunction{D-grows} tells us that if we have states \AgdaBound{j} and \AgdaBound{i}, with \AgdaBound{j} reducing to \AgdaBound{i} after a sequence of transitions, then \AgdaFunction{D} \AgdaBound{q} at time \AgdaBound{j} is a subset of \AgdaFunction{D} \AgdaBound{q} at time \AgdaBound{i}.
This is true because \AgdaFunction{D} \AgdaBound{q} is only ever added to, and never removed from.
Finally, \AgdaFunction{path-in-D-gives-path-in-R′} states that if we have \AgdaSymbol{(}\AgdaBound{e} \AgdaInductiveConstructor{◅} \AgdaBound{π}\AgdaSymbol{)} \AgdaFunction{∈} \AgdaFunction{D} \AgdaSymbol{\_}, then there was a time before at which \AgdaBound{π} \AgdaFunction{∈} \AgdaFunction{R′}.
The result type of this lemma is an instance of \AgdaDatatype{Any} from \AgdaModule{Star.TransitionMembership}, as discussed in Section \ref{sec:reflexive-transitive-closures}.
This is put to use with \AgdaFunction{find}, which gives us a transition within a sequence of transitions, allowing us to consider the computation before and after the matching transition (\AgdaFunction{take-before-∈} and \AgdaFunction{take-after-∈}, respectively).
Putting all of this together leads to a proof of Lemma 6.

\section{Application}\label{sec:application}
% Verification that \bN forms a k-closed semiring
% Extraction

\section{Haskell implementation}\label{sec:haskell-implementation}
% Classes
% Type-level Nat

%\section{Test data generation}\label{sec:test-data-generation}
