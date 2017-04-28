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
open import Data.Nat as ℕ using (ℕ)
open import Data.Product
open import Data.Star

open import Function

open import Level as L
  using (Level; _⊔_; Lift; lift)
  renaming (zero to lzero; suc to lsuc)

open import Relation.Binary using (Rel)
import Relation.Binary.EqReasoning as EqR
open import Relation.Binary.PropositionalEquality as PEq using (_≡_)
\end{code}
\fi

The majority of the work of this project has gone into the Agda implementation of Mohri's algorithm.
There is very little in the way of existing libraries to use, and the Agda implementation aims to be correct.
In contrast, the Haskell implementation can be applied to problems that will cause the algorithm to not terminate (those situations where the semiring is not $k$-closed on the graph, for example).
The division of work is reflected in the extent to which each implementation is documented in this chapter.

For the Agda implementation, the work reflects the structure of Mohri's paper~\cite{Mohri02}.
I start in \hyperref[sec:semirings]{Section \ref*{sec:semirings}} by formalising the required semiring theory.
Then, in \hyperref[sec:graphs]{Section \ref*{sec:graphs}}, I rigorously define the graph notions required, such as (weighted) graphs, paths, and shortest distance.
In \hyperref[sec:queues]{Section \ref*{sec:queues}}, I give a formalisation of queues, whose properties were never explicitly stated in the original paper.
With this preparation done, \hyperref[sec:algorithm]{Section \ref*{sec:algorithm}} presents the translated algorithm and proofs about it.
Finally for this section of the project, I discuss the verification of a $k$-closed semiring and the actual running of the program.

After this, I explain interesting parts of the Haskell implementation in \hyperref[sec:haskell-implementation]{Section \ref*{sec:haskell-implementation}}.
To finish off, \hyperref[sec:test-data-generation]{Section \ref*{sec:test-data-generation}} discusses the generation of data used in performance testing.

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

A semiring is \emph{bounded} if, for each element $a$, $\bar 1 \oplus a = \bar 1$.
A semiring is \emph{idempotent} if, for each element $a$, $a \oplus a = a$.
I show that the former implies the latter as follows.
We start by considering $a \oplus a$.
By distributivity and the fact that $\bar 1$ is the identity for $\otimes$, $a \oplus a = a \otimes (\bar 1 \oplus \bar 1)$ for arbitrary $a$.
We know that, for each $a$, $\bar 1 \oplus a = \bar 1$, so, in particular, $\bar 1 \oplus \bar 1 = \bar 1$.
This gives us $a \otimes (\bar 1 \oplus \bar 1) = a \otimes \bar 1$.
Finally, $\bar 1$ is the identity for $\otimes$, so $a \otimes \bar 1 = a$.
By the transitivity of equality, we have $a \oplus a = a \otimes (\bar 1 \oplus \bar 1) = a \otimes \bar 1 = a$, as required.

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
I do not have the space to explain these proofs, but of interest is that the hypothesis \AgdaBound{bounded} is used on the third line, and lets us say that \AgdaField{1\# + 1\# ≈ 1\#}.

\subsection{Infinite sums}

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
\footnote{%
  We can make a reduction to the halting problem.
  Suppose we have a function that takes a sequence of natural numbers and tells us whether this sequence has a sum.
  For a given Turing machine, we define a sequence that is 1 for each step of the machine, and 0 for any steps after the machine halts.
  The sequence has a sum exactly when the machine halts (that sum being the number of steps the machine took), so our infinite sum function solves the halting problem.%
}
Additionally, infinite sums are never explicitly defined in~\cite{Mohri02}, so I can only infer a definition from how infinite sums are used in the paper.
Finally, the definition 7 of~\cite{Mohri02} requires that we must have a notion of summation for \emph{potentially} infinite sequences.

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

I minor change I make to this definition before formalising in Agda is to replace the quantification $\forall n \geq N$.
Note that this is comparison between natural numbers (sequence indices), thus does not require the semiring to have an order relation.
However, quantification over all values satisfying a proposition has to be paraphrased as a quantification and an implication.
Specifically,
$$\exists N.~\forall n.~n \geq N \implies s = \bigoplus_{i=0}^n a_i.$$
In Agda, dealing with inequalities between natural numbers is often more work than necessary.
To remove $n \geq N$, we introduce natural number $k$ such that $k + N = n$.
This gives
$$\exists N.~\forall k.~s = \bigoplus_{i=0}^{k + N} a_i.$$

Finally, we must deal with the possibility of the sequence of elements being finite.
I choose to do this by representing the sequence as a \AgdaDatatype{Colist}.
\AgdaDatatype{Colist} is the non-strict version of \AgdaDatatype{List}.
Whereas functions recursing on a \AgdaDatatype{List} have to terminate, functions \emph{producing} a \AgdaDatatype{Colist} must be \emph{productive}, meaning that each element is yielded in finite time.
I define the following helper function.

% Colist

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
However, in order to cause less difficulty when proving, I choose to simplify the definition.
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

\subsection{Edges and paths}

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

\subsection{Sets of paths}

\subsection{Shortest distance}

\section{Queues}\label{sec:queues}

Mohri's algorithm is generic in the queueing discipline used to keep the vertices to be explored.
From the algorithm, we see that a queue supports being assigned a singleton (Line 4), test for emptyness (Line 5), extracting of items (Lines 6-7), test for membership (Line 14), and inserting of items (Line 15).
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

\section{Algorithm}
% Translation from the paper
% Inclusion of D and R
% L, I, E
% Internals modules

\section{Application}\label{sec:application}
% Verification that \bN forms a k-closed semiring
% Extraction

\section{Haskell implementation}\label{sec:haskell-implementation}
% Classes
% Type-level Nat

\section{Test data generation}\label{sec:test-data-generation}
