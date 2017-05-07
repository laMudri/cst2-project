\documentclass{article}

\begin{document}

\chapter{Preparation}

\iffalse
\begin{code}
module Preparation where
\end{code}
\fi

In this chapter, I give an overview of the main concepts used in the remainder of this report.
In \hyperref[sec:agda]{Section \ref*{sec:agda}} I introduce the programming language Agda, which I use to formalise the theory underpinning the shortest distance algorithm.
Then, in \hyperref[sec:shortest-distance-problems]{Section \ref*{sec:shortest-distance-problems}}, I give an informal introduction to the use of semirings in shortest distance problems.
This is also where I state and discuss the algorithm of Mohri, which is the focus of this project.
%In \hyperref[sec:haskell]{Section \ref*{sec:haskell}} I give a summary of the Haskell features I use in the performance testing code that may be novel to a reader familiar with a statically typed functional programming language like ML, but not Haskell specifically.
In \hyperref[sec:haskell]{Section \ref*{sec:haskell}} I give a brief summary of Haskell, the programming language I use for testing performance of the algorithm.
Finally, in \hyperref[sec:requirements-analysis]{Section \ref*{sec:requirements-analysis}} I clarify how the implementation is split into distinct sections, and what tools are used for implementation and organisation.

\section{Agda}\label{sec:agda}

%Dependent typing, the ability for types to make reference to values, makes it much easier to give programs expressive types which capture the behaviour of the program.
%Because types are checked by the compiler, this gives us a flexible way to verify the behaviour of programs.
%Agda is a programming language with full support for dependent types.

Dependent typing, the ability for types to make reference to values, offers several new possibilities in software engineering.
For one, dependent types allow us to use a wider range of mathematical concepts when programming.
For example, mathematics often makes use of vectors over a set $X$ of some fixed length $n$, denoted $X^n$.
In most programming languages, we are either restricted to special cases such as 2-element and 3-element vectors, or use lists of arbitrary length.
The latter leaves us without compile-time checks that, for example, the two operands in a vector addition have the same dimension.

Also, dependent types give us the tools to give precise types to many programs.
To see this, we consider again difficulties in using lists of arbitrary length.
A function we often define on lists is an indexing function, which returns the $i$th element of a list.
However, this function can fail at runtime with an ``index out of bounds'' error if $i$ is too large for the list.
This means that whenever we use an indexing function, we must consider what would happen if $i$ were out of bounds, or else risk a runtime error.
Dependent types give us a second option.
We can instead use an indexing function that requires a proof that $i$ is in bounds (that $i$ is less than the length of the list) and then never throws an error.
With dependent types, we can form a type of such proofs, which give us machine-checked assertions about our programs.

Agda~\cite{Norell07} is a pure functional programming language with full support for dependent types.
It is intended to be a practical tool for both programming and proving, both of which I introduce in this section.

\subsection{Programming in Agda}\label{sec:programming-in-agda}

An example that demonstrates dependent types is \AgdaDatatype{Fin} \AgdaBound{n}, a type containing exactly \AgdaBound{n} inhabitants, corresponding to the natural numbers less than \AgdaBound{n}.
The description ``dependent'' applies because \AgdaBound{n} is a value (a natural number) appearing in a type \AgdaDatatype{Fin} \AgdaBound{n}.
First, we will see how to implement the non-dependent type of natural numbers encoded in unary.

\begin{code}
data ℕ : Set where
  zero  :      ℕ
  suc   : ℕ →  ℕ
\end{code}

This defines a new type \AgdaDatatype{ℕ}, which is a \AgdaPrimitiveType{Set}.
In Agda, types have types\footnote{A type of types is often known as a \emph{universe}.}, and \AgdaPrimitiveType{Set} is the type comprising simple datatypes like natural numbers and booleans.
The colon symbol can be read either ``has type'' or ``which has type'', depending on context.
Our definition says that we have a natural number \AgdaInductiveConstructor{zero}, and a function \AgdaInductiveConstructor{suc} which takes a natural number and produces a new natural number.
Given that function/constructor application is denoted by a space, we have natural numbers \AgdaInductiveConstructor{zero}, \AgdaInductiveConstructor{suc zero}, \AgdaInductiveConstructor{suc} \AgdaSymbol{(}\AgdaInductiveConstructor{suc zero}\AgdaSymbol{)}, and so on, encoding 0, 1, and 2, respectively.

With this, we can now define \AgdaDatatype{Fin} as follows.

\begin{code}
data Fin : ℕ → Set where
  fzero  : {n : ℕ}          → Fin (suc n)
  fsuc   : {n : ℕ} → Fin n  → Fin (suc n)
\end{code}

This defines \AgdaDatatype{Fin} as a function that takes a natural number (element of \AgdaDatatype{ℕ}) and produces a small type (element of \AgdaPrimitiveType{Set}).
Specifically, there is a constructor \AgdaInductiveConstructor{fzero} that makes an element of this type for any number greater than 0 (because $0 < 1$ but $0 \nless 0$), and there is a constructor \AgdaInductiveConstructor{fsuc} that takes a number less than \AgdaBound{n} and produces a new number less than \AgdaInductiveConstructor{suc} \AgdaBound{n}.
As in most programming languages of the Haskell/ML style (see, e.g.,~\cite{Haskell2010}\cite{Milner1990}\cite{ocaml}), the arrow of the function type associates rightward, so the type of \AgdaInductiveConstructor{fsuc} is read as \AgdaSymbol{\{}\AgdaBound{n} \AgdaSymbol{:} \AgdaDatatype{ℕ}\AgdaSymbol{\}} \AgdaSymbol{→} \AgdaSymbol{(}\AgdaDatatype{Fin} \AgdaBound{n} \AgdaSymbol{→} \AgdaDatatype{Fin} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{))}.
Furthermore, in Agda, the arrow can be a \emph{binder}, meaning that as well as having simple functions of type \AgdaBound{A} \AgdaSymbol{→} \AgdaBound{B}, we can have dependent functions of type \AgdaSymbol{(}\AgdaBound{a} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaBound{B}, where \AgdaBound{B} can be parametrised by \AgdaBound{a}.
This is what we have with \AgdaBound{n} in both constructors.
The curly braces, rather than round brackets, around \AgdaBound{n} \AgdaSymbol{:} \AgdaDatatype{ℕ} signify that \AgdaBound{n} is \emph{implicit}, so when we call either of the constructors, we don't have to write out this argument.
This has the effect of making \AgdaDatatype{Fin} \AgdaBound{n} values look like natural numbers, except for their type and the `f's in the constructor names.

Implicit arguments are filled in by unification.
If no value can be inferred, or there is not enough information to disambiguate between multiple inferred values, type checking fails.
In such a situation, we may want to provide an implicit argument explicitly, which can be done by putting the desired argument in curly braces.
We can also do the reverse: to not provide a value for an explicit argument, we use an underscore character in its place.
Thus, the difference between implicit and explicit arguments is a matter of defaults, rather than anything fundamental.

We can put this type family to use alongside a type of lists of known length, known as \emph{vectors}.

\iffalse
\begin{code}
open import Level using (Level; _⊔_) renaming (zero to lzero; suc to lsuc)
\end{code}
\fi

\begin{code}
data Vec {a : Level} (A : Set a) : ℕ → Set a where
  []   :                          Vec A zero
  _∷_  : {n : ℕ} → A → Vec A n →  Vec A (suc n)
\end{code}

The constructors for \AgdaDatatype{Vec} state that, for any type \AgdaBound{A}, \AgdaInductiveConstructor{[]} (the empty list) is a vector of length 0, and given an element \AgdaBound{x} \AgdaSymbol{:} \AgdaBound{A} and a vector \AgdaBound{xs} of length $n$, \AgdaBound{x} \AgdaSymbol{∷} \AgdaBound{xs} (the vector formed by appending \AgdaBound{x} to the front of \AgdaBound{xs}) is a vector of length $1 + n$.
When reading aloud, \AgdaInductiveConstructor{[]} is read ``nil'' and \AgdaInductiveConstructor{∷} is read ``cons''.

Several new things are introduced here.
First, because a vector can contain elements of arbitrary type \AgdaBound{A}, we must deal with universe levels.
Earlier, I mentioned that \AgdaPrimitiveType{Set} is the type of all simple datatypes.
The technical term for these is \emph{small types}, and \AgdaPrimitiveType{Set} is known as the smallest universe.
In more complex situations than those discussed so far, we encounter larger types, the first example being \AgdaPrimitiveType{Set} itself.
To say that \AgdaPrimitiveType{Set} has type \AgdaPrimitiveType{Set} is known to give rise to Hurkens' paradox~\cite{Hurkens1995}, an inconsistency comparable to Russell's paradox in set theory.
Instead, we say that \AgdaPrimitiveType{Set} is an abbreviation for \AgdaPrimitiveType{Set} \AgdaPrimitive{lzero}, and for any \AgdaBound{ℓ} \AgdaSymbol{:} \AgdaDatatype{Level}, the type of \AgdaPrimitiveType{Set} \AgdaBound{ℓ} is \AgdaPrimitiveType{Set} \AgdaSymbol{(}\AgdaPrimitive{lsuc} \AgdaBound{ℓ}\AgdaSymbol{)}.
In this case, we take an implicit \AgdaPostulate{Level} parameter so as to be polymorphic over types of all levels.

We can also note the difference between \emph{parameters} \AgdaBound{a} and \AgdaBound{A}, appearing before the colon, and the \emph{index} of type \AgdaDatatype{ℕ}, appearing after the colon but to the left of an arrow.
%\AgdaBound{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every mention of \AgdaDatatype{Vec} in the definition must be applied to \AgdaBound{A} exactly.
\AgdaBound{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every constructor produces a value with the same fixed value of the parameter.
In contrast, indices allow specific values to come from constructors, as seen by the index taking the values \AgdaInductiveConstructor{zero} and \AgdaInductiveConstructor{suc} \AgdaBound{n} at in the result type of each constructor respectively.
It is an important distinction that parameters are named, and their names are available throughout the definition.
On the other hand, even though indices can be named, the names are only available until the \AgdaKeyword{where} keyword.
The distinction comes about mainly because of Agda's explicit handling of levels.
Parameters do not have to be quantified over by constructors, so do not affect the level of the resulting type.
On the other hand, indices have to be quantified over, meaning that the resulting type has to be in a universe strictly larger than the universe of any indices that are used.

Finally, I have introduced the \emph{mixfix operator} \AgdaInductiveConstructor{\_∷\_}.
The underscores signify places for arguments to go when the function is applied.
So, to use \AgdaInductiveConstructor{\_∷\_} on \AgdaBound{x} \AgdaSymbol{:} \AgdaBound{A} and \AgdaBound{xs} \AgdaSymbol{:} \AgdaDatatype{Vec} \AgdaBound{A} \AgdaBound{n}, we would write \AgdaBound{x} \AgdaInductiveConstructor{∷} \AgdaBound{xs}.
About syntax, identifiers are very free in form, and can contain almost any Unicode character.
It is common to have variables named like \AgdaBound{a≤b} or \AgdaBound{x∈[x]} (both without spaces).
It also means that spaces around infix operators are nearly always necessary.

With these types defined, we can produce functions for manipulating and using vectors.
An interesting example is a function that returns the \AgdaBound{i}th element of a vector.

\begin{code}
index : {a : Level} → {A : Set a} → {n : ℕ} → Fin n → Vec A n → A
index fzero     (x ∷ xs) = x
index (fsuc i)  (x ∷ xs) = index i xs
\end{code}

This defines the function \AgdaFunction{index} recursively by pattern matching on its first argument \AgdaBound{i}.
It is important that we never pattern match on \AgdaInductiveConstructor{[]}, and we can see why that is by looking at the implicit argument \AgdaBound{n}.

\begin{code}
index′ : {a : Level} → {A : Set a} → {n : ℕ} → Fin n → Vec A n → A
index′ {n = suc n} fzero     (x ∷ xs) = x
index′ {n = suc n} (fsuc i)  (x ∷ xs) = index i xs
\end{code}

Both constructors of \AgdaDatatype{Fin} produce a value of type \AgdaDatatype{Fin} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{)} for some \AgdaBound{n}.
So, when we pattern match on a \AgdaDatatype{Fin} \AgdaBound{n} argument, we know that in both cases, \AgdaBound{n} is of the form \AgdaInductiveConstructor{suc} \AgdaBound{n}.
With this noted, we see what constructors make a value of type \AgdaDatatype{Vec} \AgdaBound{A} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{)}.
The only one is \AgdaInductiveConstructor{\_∷\_}, so this is the only constructor for which we need a case.

When programming, \AgdaFunction{index} is a useful function to have.
For a vector of length \AgdaBound{n}, it can only take indices less than \AgdaBound{n}.
The function always produces a value, and in particlar will never throw an out-of-bounds exception.
Functions that could fail need to be explicitly annotated.
With expressive types, it is usually possible to narrow the domain (restrict the preconditions) or widen the codomain (relax the postconditions) such that a potentially failing function no longer fails.

\subsection{Proofs in Agda}\label{sec:proofs-in-agda}

Most of the work of this project goes into producing proofs.
Though Agda's proof language is the same as its programming language, expressing propositions and proofs is sufficiently different from programming that it has a separate section.
I begin by introducing how datatypes can be used to represent logical connectives, and then introduce practical proofs.

\subsubsection{Logical connectives}

One kind of failure that Agda avoids is non-termination.
Non-termination, resulting from unrestricted recursion, can be used to cause inconsistency.
To see what inconsistency means, we must first have some notion of falsity.

\begin{code}
data ⊥ : Set where
\end{code}

\AgdaDatatype{⊥} (read ``bottom'') is a type defined to be inhabited by no values.
If we ever obtain a value of type \AgdaDatatype{⊥}, we know that there is something wrong with our assumptions, and the corresponding branch of our code can never be reached.
However, with a non-terminating program, we can introduce an expression with type \AgdaDatatype{⊥}.

\begin{code}
{-# NON_TERMINATING #-}
spin : ⊥
spin = spin
\end{code}

If we tried to reduce this to a value, we would be stuck in a loop of replacing \AgdaFunction{spin} with \AgdaFunction{spin}, and never reach a normal form (that is, an expression which cannot reduce further).
For this reason, Agda makes sure that all unannotated functions use only structural recursion and induction, meaning that some argument(s) become strictly smaller at each recursive call.
This is a conservative estimate of terminating programs.
Sometimes, it is too conservative, and we need to do more work to show that our desired function always terminates.
This is the case for the algorithm I implement for this project.

I remarked that \AgdaDatatype{⊥} is the type representing falsity.
More generally, the Curry-Howard correspondence~\cite{howard:tfatnoc} states that for any logical proposition, we can form a corresponding type, and proof of the proposition gives an inhabitant of the type.
Any proposition with a proof is true, so we can regard any inhabited type as representing a true proposition.
The simplest inhabited type is \AgdaDatatype{⊤}.

\begin{code}
record ⊤ : Set where
  constructor tt
\end{code}

This defines \AgdaDatatype{⊤} as a record with no fields.
Generally, a record will have zero or more fields (demonstrated by \AgdaDatatype{Σ} below), all of which need to be provided to produce an inhabitant of the record type.
It is trivial to provide no fields, so \AgdaDatatype{⊤} is inhabited by just \AgdaInductiveConstructor{tt}.

To flesh out the Curry-Howard correspondence, we will look at the logical connectives.
We have already seen the types corresponding to implication and universal quantification --- these are non-dependent functions (\AgdaBound{A} \AgdaSymbol{→} \AgdaBound{B}) and dependent functions (\AgdaSymbol{(}\AgdaBound{x} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaBound{B}), respectively.
To see why, we compare how the proposition can be proved and used with how the type can be constructed and deconstructed.
To prove a universal quantification $\forall x \in A. B$, where $B$ can mention $x$, we take arbitrary $x \in A$ and prove $B$ for this $x$.
If we have assumed $\forall x \in A. B$, we can put this to use by providing some specific $a \in A$, concluding that $B$ holds when $x$ is replaced by $a$.
In dependent type theory, types take the place of both sets and propositions, so having an element $a$ of set $A$ and a proof $b$ of proposition $B$ are translated to \AgdaBound{a} being an inhabitant of \AgdaBound{A} and \AgdaBound{b} being an inhabitant of \AgdaBound{B}, respectively.
This means that to produce an inhabitant of \AgdaSymbol{(}\AgdaBound{x} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaBound{B}, we take an arbitrary inhabitant \AgdaBound{x} of \AgdaBound{A} as a function argument and return some inhabitant of \AgdaBound{B} at this value of \AgdaBound{x}.
To use one of these proofs, we use function application, which, from our proof \AgdaBound{f} \AgdaSymbol{:} \AgdaSymbol{(}\AgdaBound{x} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaBound{B} and \AgdaBound{a} \AgdaSymbol{:} \AgdaBound{A}, gives us an inhabitant of \AgdaBound{B} at \AgdaBound{a}.

To prove an implication $A \implies B$, we assume $A$ and then prove $B$.
We can reword this to say that to prove $A \implies B$, we take an arbitrary proof of $A$ and produce a proof of $B$.
This is how, in type theory, implication is a special case of universal quantification where the proposition \AgdaBound{B} does not mention the proof of the hypothesis \AgdaBound{a} \AgdaSymbol{:} \AgdaBound{A} (though its proof might).

Other logical connectives can be defined as datatypes.
I start with \emph{disjunction}, logical \emph{or}.
With this definition, I begin to introduce some of the notational abbreviations provided by Agda.
Specifically, in a parameter list, \AgdaSymbol{\{}\AgdaBound{a} \AgdaBound{b} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{\}} is short for \AgdaSymbol{\{}\AgdaBound{a} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{\}} \AgdaSymbol{\{}\AgdaBound{b} \AgdaSymbol{:} \AgdaBound{A}\AgdaSymbol{\}}, and similar when the curly braces are replaced by round brackets.

\begin{code}
data _⊎_ {a b : Level} (A : Set a) (B : Set b) : Set (a ⊔ b) where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B
\end{code}

\AgdaDatatype{\_⊎\_} is a \emph{tagged union} or \emph{sum} type, known as \texttt{Either} in Haskell or \texttt{result} in ML.
To prove a disjunction $A \vee B$, we must either prove $A$ or prove $B$; and when given a proof of $A \vee B$, we can consider the cases of $A$ holding or $B$ holding.
Similarly, to give an inhabitant of \AgdaBound{A} \AgdaDatatype{⊎} \AgdaBound{B}, we produce either \AgdaInductiveConstructor{inj₁} \AgdaBound{a} for \AgdaBound{a} \AgdaSymbol{:} \AgdaBound{A}, or \AgdaInductiveConstructor{inj₂} \AgdaBound{b} for \AgdaBound{b} \AgdaSymbol{:} \AgdaBound{B}; and given a value of type \AgdaBound{A} \AgdaDatatype{⊎} \AgdaBound{B}, we can use pattern matching to branch based on whether it was introduced by \AgdaInductiveConstructor{inj₁} or \AgdaInductiveConstructor{inj₂}.

Notice here that for \AgdaBound{A} at level \AgdaBound{a} and \AgdaBound{B} at level \AgdaBound{b}, the formed sum type \AgdaBound{A} \AgdaDatatype{⊎} \AgdaBound{B} has level \AgdaBound{a} \AgdaPrimitive{⊔} \AgdaBound{b} --- the maximum level of \AgdaBound{a} and \AgdaBound{b}.
Intuitively, this ensures that whether the sum value contains a value of type \AgdaBound{A} (via \AgdaInductiveConstructor{inj₁}) or a value of type \AgdaBound{B} (via \AgdaInductiveConstructor{inj₂}), the type will be big enough to contain either.
Usually, levels are uninteresting, and we keep them around merely to ensure consistency.

Next comes existential quantification.

\begin{code}
record Σ {a b : Level} (A : Set a) (B : A → Set b) : Set (a ⊔ b) where
  constructor _,_
  field
    proj₁ : A
    proj₂ : B proj₁
\end{code}

\AgdaDatatype{Σ} is a \emph{dependent sum} type.
To prove $\exists x \in A. B$, where $B$ can mention $x$, we give some element $a$ of $A$, and then prove $B$ with each occurrence of $x$ replaced by $a$.
When we assume that $\exists x \in A. B$, we assume that we have some $a \in A$ and that $B$ holds when $x$ is replaced by $a$.
To give an inhabitant of \AgdaDatatype{Σ} \AgdaBound{A} \AgdaBound{B}, we must produce an inhabitant \AgdaBound{a} of \AgdaBound{A} and an inhabitant \AgdaBound{b} of \AgdaBound{B} \AgdaBound{a}, remembering that \AgdaBound{B} is a \emph{function} from \AgdaBound{A} to \AgdaPrimitiveType{Set} \AgdaBound{b}, arranging these in the expression \AgdaBound{a} \AgdaInductiveConstructor{,} \AgdaBound{b}.
Similarly, when taking an inhabitant of \AgdaDatatype{Σ} \AgdaBound{A} \AgdaBound{B}, pattern matching gives us an inhabitant \AgdaBound{a} of \AgdaBound{A} and an inhabitant \AgdaBound{b} of \AgdaBound{B} \AgdaBound{a}.

The type for logical conjunction, \AgdaDatatype{\_×\_}, known as the \emph{product} type and whose values are known as \emph{pairs} or \emph{tuples}, can be defined in terms of \AgdaDatatype{Σ}.
We set the second argument \AgdaBound{B} of \AgdaDatatype{Σ} to be a constant function.
Note that Agda allows use of $\lambda$-notation when producing anonymous functions, and the underscore stands in place of an unused argument.

\begin{code}
_×_ : {a b : Level} → Set a → Set b → Set (a ⊔ b)
A × B = Σ A (λ _ → B)
\end{code}

This is much like how implication is the non-dependent version of universal quantification.
That this corresponds to conjunction can be checked.

The remaining major logical connective is \emph{not}.
We use the following definition.

\begin{code}
¬_ : {a : Level} → Set a → Set a
¬ A = A → ⊥
\end{code}

To prove a negation $\neg A$, we assume $A$ and derive a contradiction.
Producing a proof of $\bot$ is a contradiction, so this is just like proving the implication $A \implies \bot$.

Notice that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaBound{A} is not the same as \AgdaBound{A}.
Indeed, these are not even equivalent, in the sense that there are values of \AgdaBound{A} such that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaBound{A} is provable, but \AgdaBound{A} is not.
The former says that we can refute any refutation of \AgdaBound{A}, whereas the latter says that we have a proof of \AgdaBound{A}.
An example of where the two differ is given in the following.

\begin{code}
¬¬lem : {ℓ : Level} → {X : Set ℓ} → ¬ ¬ (X ⊎ (¬ X))
¬¬lem {X = X} f = ¬¬X ¬X
  where
  ¬X : ¬ X
  ¬X x = f (inj₁ x)

  ¬¬X : ¬ ¬ X
  ¬¬X g = f (inj₂ g)

-- Not provable:
-- lem : {ℓ : Level} → {X : Set ℓ} → X ⊎ (¬ X)
-- lem = ?
\end{code}

In the first proof, we note that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaSymbol{(}\AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{))} is just \AgdaSymbol{(}\AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥}, i.e., a function which takes a function \AgdaBound{f} \AgdaSymbol{:} \AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥} and returns an inhabitant of \AgdaDatatype{⊥}.
But we can split \AgdaBound{f} into two functions of types \AgdaBound{X} \AgdaSymbol{→} \AgdaDatatype{⊥} and \AgdaFunction{¬} \AgdaBound{X} \AgdaSymbol{→} \AgdaDatatype{⊥}
These contradict each other, producing the required inhabitant of \AgdaDatatype{⊥}.

On the other hand, the second proof fails.
We can argue why there is no such proof by an appeal to computability.
An Agda program must run on a computer, so Agda is no more powerful than a Turing machine.
In particlar, an Agda program cannot solve the halting problem.
We can encode Turing machine programs and configurations in Agda, and produce a family of types \AgdaBound{H} indexed on a program-configuration pair \AgdaBound{M} which is inhabited exactly when \AgdaBound{M} halts.
If we could prove \AgdaFunction{lem}, then we would have a proof of \AgdaBound{H M} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{H M}\AgdaSymbol{)} for arbitrary \AgdaBound{M}.
But this would actually give us either some proof that \AgdaBound{H M} holds or some proof that \AgdaFunction{¬} \AgdaBound{H M} holds, and we can test which is given.
This solves the halting problem, so a proof of \AgdaFunction{lem} is impossible.

\subsubsection{Mathematics}

A common relation to use in mathematics is equality.
We can define a polymorphic notion of equality as follows.

\begin{code}
data _≡_ {a : Level} {A : Set a} (x : A) : A → Set where
  refl : x ≡ x
\end{code}

This says that, for any \AgdaBound{x}, \AgdaBound{x} \AgdaDatatype{≡\_} is a type family inhabited only at \AgdaBound{x} itself.
\AgdaInductiveConstructor{refl} is short for ``reflexivity'', so the defining fact about \AgdaDatatype{\_≡\_} is that each \AgdaBound{x} is related to itself.
There are other properties we can prove of equality, typically using dependent pattern matching, as seen in the definition of \AgdaFunction{index} in Section \ref{sec:programming-in-agda}.
One such property is that, for equal \AgdaBound{x} and \AgdaBound{y}, \AgdaBound{f} \AgdaBound{x} and \AgdaBound{f} \AgdaBound{y} are also equal --- colloquially, applying a function to both sides of an equation preserves equality, or that all functions are well defined with respect to equality.

\begin{code}
cong : {a b : Level} → {A : Set a} → {B : Set b} →
       (f : A → B) → {x y : A} → x ≡ y → f x ≡ f y
cong f {x} {.x} refl = refl
\end{code}

We pattern match on the proof of \AgdaBound{x} \AgdaDatatype{≡} \AgdaBound{y}, which forces \AgdaBound{y} to be \AgdaBound{x}.
This is shown in the implicit arguments, where the dot before the second \AgdaBound{x} denotes that the second \AgdaBound{x} is an expression, with its value forced by the pattern matching.
Now that \AgdaBound{y} is unified with \AgdaBound{x}, we are required to prove \AgdaBound{f} \AgdaBound{x} \AgdaDatatype{≡} \AgdaBound{f} \AgdaBound{x}, which follows by reflexivity.

Finally, we can use this equality relation with induction.
Proof by induction is the basic strategy when proving properties of a recursive function.
To build an example, I will introduce a recursively defined addition function on natural numbers.

\begin{code}
add : ℕ → ℕ → ℕ
add zero     n = n
add (suc m)  n = suc (add m n)
\end{code}

First, we note that the equality we defined is up to $\beta$-equivalence -- that is, terms are equated if they evaluate to the same term.
\AgdaFunction{add} is defined recursively on its first argument, and in particular, \AgdaFunction{add} \AgdaInductiveConstructor{zero} \AgdaBound{n} evaluates to \AgdaBound{n}.

\begin{code}
0+ : (n : ℕ) → add zero n ≡ n
0+ n = refl
\end{code}

However, for free variable \AgdaBound{n}, \AgdaFunction{add} \AgdaBound{n} \AgdaInductiveConstructor{zero} does not evaluate to \AgdaBound{n}, so we must instead prove by induction that for any concrete \AgdaBound{n}, we do have the equality.

\begin{code}
+0 : (n : ℕ) → add n zero ≡ n
+0 zero     = refl
+0 (suc n)  = cong suc (+0 n)
\end{code}

For the base case, when \AgdaBound{n} is \AgdaInductiveConstructor{zero}, we have to prove \AgdaFunction{add} \AgdaInductiveConstructor{zero} \AgdaInductiveConstructor{zero} \AgdaDatatype{≡} \AgdaInductiveConstructor{zero}.
This follows by computation and reflexivity.

In the step case, when \AgdaBound{n} is of the form \AgdaInductiveConstructor{suc} \AgdaBound{n}, we are required to prove \AgdaFunction{add} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{)} \AgdaInductiveConstructor{zero} \AgdaDatatype{≡} \AgdaInductiveConstructor{suc} \AgdaBound{n}.
Computation on the lefthand side gives us \AgdaInductiveConstructor{suc} \AgdaSymbol{(}\AgdaFunction{add} \AgdaBound{n} \AgdaInductiveConstructor{zero}\AgdaSymbol{)}.
We know by induction that \AgdaFunction{add} \AgdaBound{n} \AgdaInductiveConstructor{zero} \AgdaDatatype{≡} \AgdaSymbol{n}, and applying \AgdaInductiveConstructor{suc} to both sides of this equation (using \AgdaFunction{cong}) gives the required result.

\subsection{Modules}

Agda has a distinctive module system.
Modules serve a dual purpose --- both grouping together related definitions and offering a method of ad-hoc polymorphism.
Both of these purposes rely on the fact that modules can be parametrised, as will be seen.

\subsubsection{Modules for convenience}

Consider the following example.

\begin{code}
module VecDefinitions {a} (A : Set a) where
  index″ : ∀ {n} → Fin n → Vec A n → A
  index″ fzero     (x ∷ xs) = x
  index″ (fsuc i)  (x ∷ xs) = index″ i xs

  head : ∀ {n} → Vec A (suc n) → A
  head (x ∷ xs) = x

  tail : ∀ {n} → Vec A (suc n) → Vec A n
  tail (x ∷ xs) = xs
\end{code}

In a parameter list, \AgdaBound{x} and \AgdaSymbol{\{}\AgdaBound{x}\AgdaSymbol{\}}, for some name \AgdaBound{x} being bound, are abbreviations for explicit and implicit parameters, respectively, \AgdaBound{x} with inferred type.
In this case, the inferred type for \AgdaBound{a} is \AgdaPrimitiveType{Level}.
Similar can be achieved in type signatures using the \AgdaSymbol{∀} symbol, as shown in the function definitions of this module.
In each case, the inferred type for \AgdaBound{n} is \AgdaDatatype{ℕ}.

Note in this example that \AgdaBound{a} and \AgdaBound{A} are parameters to the module, and available to every definition inside the module.
This reduces the boilerplate code usually required in introducing the level and element type for each declaration.

To use the definitions in this module, we can either open the module directly or fill in the parameters when opening the module.

\begin{code}
open VecDefinitions

open VecDefinitions ℕ
\end{code}

The first of these introduces \AgdaFunction{index″}, \AgdaFunction{head}, and \AgdaFunction{tail} into scope, but expecting \AgdaBound{a} and \AgdaBound{A} as arguments before the rest of the arguments.
It is as if we had declared \AgdaFunction{index″} as follows.

\begin{code}
index₀ : ∀ {a} (A : Set a) {n} → Fin n → Vec A n → A
index₀ {a} A fzero     (x ∷ xs) = x
index₀ {a} A (fsuc i)  (x ∷ xs) = index₀ {a} A i xs
\end{code}

In the second \AgdaKeyword{open} declaration, we specialise all of the definitions to acting on the \AgdaDatatype{ℕ} type.
This time, it is as if we had declared \AgdaFunction{index″} as follows.

\begin{code}
index₁ : ∀ {n} → Fin n → Vec ℕ n → ℕ
index₁ fzero     (x ∷ xs) = x
index₁ (fsuc i)  (x ∷ xs) = index₁ i xs
\end{code}

\subsubsection{Modules for polymorphism}\label{sec:modules-for-polymorphism}

Another use of the module system is when dealing with algebraic structures.
We typically define new algebraic structures using a record, similar to how structures are defined using tuples in mathematics.
As an example, I use the \emph{functor} structure, which is parallel to the \texttt{Functor} typeclass from Haskell.

\begin{code}
record RawFunctor (a : Level) : Set (lsuc a) where
  field
    F    : Set a → Set a
    map  : ∀ {A B} → (A → B) → (F A → F B)
\end{code}

This says that a \AgdaDatatype{RawFunctor} is made up of a function \AgdaField{F} between types and a function \AgdaField{map} taking an \AgdaBound{A} \AgdaSymbol{→} \AgdaBound{B} function and producing an \AgdaField{F} \AgdaBound{A} \AgdaSymbol{→} \AgdaField{F} \AgdaBound{B} function.
We can see that our \AgdaDatatype{Vec} type family can be used to create a \AgdaDatatype{RawFunctor}.

\begin{code}
vec-functor : ∀ a (n : ℕ) → RawFunctor a
vec-functor a n = record
  { F = λ A → Vec A n
  ; map = vmap {n}
  }
  where
  vmap : ∀ {m} {A B : Set a} → (A → B) → (Vec A m → Vec B m)
  vmap f [] = []
  vmap f (x ∷ xs) = f x ∷ vmap f xs
\end{code}

This says that for a fixed level \AgdaBound{a} and length \AgdaBound{n}, vectors of that length form a functor (at level \AgdaBound{a}).
The function \AgdaFunction{vmap} is defined recursively to apply \AgdaBound{f} to each element of the vector it is given.
We need to define it for arbitrary \AgdaBound{m} because the length of the list changes as we recurse into it.
We can think of \AgdaFunction{vmap} as a family of functions, with \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaInductiveConstructor{suc} \AgdaBound{m}\AgdaSymbol{\}} defined in terms of \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaBound{m}\AgdaSymbol{\}}.
Defining \AgdaField{map} as \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaBound{n}\AgdaSymbol{\}} picks out the function that acts upon vectors of length \AgdaBound{n}.

We can also write definitions generic in the \AgdaDatatype{RawFunctor} supplied using parametrised modules, as in the previous section.
%Conveniently, Agda has a way of converting a record value into a module, using the name of the record followed by the value.
Conveniently, for each declaration of a record type \AgdaDatatype{R}, Agda makes a module with the same name and a single parameter \AgdaBound{r} \AgdaSymbol{:} \AgdaDatatype{R}.
The definitions in that module are the fields in the record, taking their values from \AgdaBound{r}.
This makes record types and record values act like ML signatures and structures, respectively.

In the following, \AgdaField{F} and \AgdaField{map} are put into scope when we open the module \AgdaModule{RawFunctor} \AgdaBound{RF}.

\begin{code}
module RawFunctorUtils {a} (RF : RawFunctor a) where
  open RawFunctor RF

  replace-all : ∀ {A B} → B → F A → F B
  replace-all b = map (λ _ → b)
\end{code}

We can now use this \AgdaFunction{replace-all} function on a vector by opening the \AgdaModule{RawFunctorUtils} module supplied with the \AgdaFunction{vec-functor} proof.

\begin{code}
zeroify : ∀ {A : Set} {n} → Vec A n → Vec ℕ n
zeroify {n = n} xs = replace-all zero xs
  where
  open RawFunctorUtils (vec-functor lzero n)
\end{code}

\subsection{Termination and productivity}\label{sec:termination-and-productivity}

As explained at the start of Section \ref{sec:proofs-in-agda}, Agda restricts recursion to avoid non-termination.
To enforce this, Agda has a conservative termination checker which acts on definitions for which partial type correctness has been established.
Additionally, there is a productivity checker, used when dealing with potentially infinite data structures such as streams.

\subsubsection{Termination}

For a function consuming data, the termination checker checks that any recursive calls to the function are made at \emph{structurally smaller} arguments.
Being structurally smaller is a syntactic property of a term, and thus decidable.
Intuitively, a structurally smaller term is contained in the term it is structurally smaller than.
The fact that data terms are finite means that we cannot have an infinite chain of containment.
Thus, recursive calls at structurally smaller arguments allow us only finitely many calls before reaching a base case.

Specifically, we can define a relation $<$, with transitive closure $<^+$, such that $x <^+ y$ holds whenever $x$ is structurally smaller than $y$.
The definition of $<$ is as follows.

\begin{itemize}
  \item If $y$ is a term made of a data constructor applied to one or more terms, one of which is $x$, then $x < y$.
  \item If $x < y$ and $a$ is a term, then $x < y~a$.
\end{itemize}

Of these rules, the first is far more often invoked.
The second is relevant, amongst other things, for data structures taking the form of infinitely branching trees.
For example, we may have the following type.

\begin{code}
data InfTree {a} (A : Set a) : Set a where
  leaf    : InfTree A
  branch  : (ℕ → InfTree A) → InfTree A
\end{code}

A term \AgdaInductiveConstructor{branch} \AgdaBound{f} represents a tree with infinitely many immediate children, accessed as \AgdaBound{f} \AgdaBound{n} for some natural number \AgdaBound{n}.
The combination of the two rules allow us to say that \AgdaBound{f} \AgdaBound{n} is structurally smaller than \AgdaInductiveConstructor{branch} \AgdaBound{f}.

As an example, this allows us to define a function which halves a natural number, rounding down.

\begin{code}
half : ℕ → ℕ
half zero           = zero
half (suc zero)     = zero
half (suc (suc n))  = suc (half n)
\end{code}

However, a general division function is more difficult.
We may attempt the following, omitting the definitions of \AgdaFunction{\_-\_} (subtraction) and \AgdaFunction{\_≤?\_} (\AgdaBound{m} \AgdaFunction{≤?} \AgdaBound{n} decides whether \AgdaBound{m} is less than or equal to \AgdaBound{n}), which can be found in the standard library.

\iffalse
\begin{code}
_-_ : ℕ → ℕ → ℕ
x - zero = x
zero - suc y = zero
suc x - suc y = x - y

data _≤_ (m : ℕ) : ℕ → Set where
  ≤-refl : m ≤ m
  ≤-step : ∀ {n} → m ≤ n → m ≤ suc n

z≤n : ∀ n → zero ≤ n
z≤n zero = ≤-refl
z≤n (suc n) = ≤-step (z≤n n)

s≤s : ∀ {m n} → m ≤ n → suc m ≤ suc n
s≤s ≤-refl = ≤-refl
s≤s (≤-step lt) = ≤-step (s≤s lt)

≤-trans : ∀ {m n o} → m ≤ n → n ≤ o → m ≤ o
≤-trans mn ≤-refl = mn
≤-trans mn (≤-step no) = ≤-step (≤-trans mn no)

p≤p : ∀ {m n} → suc m ≤ suc n → m ≤ n
p≤p ≤-refl = ≤-refl
p≤p (≤-step lt) = ≤-trans (≤-step ≤-refl) lt

open import Function
open import Relation.Nullary

_≤?_ : ∀ m n → Dec (m ≤ n)
zero ≤? n = yes (z≤n n)
suc m ≤? zero = no (λ ())
suc m ≤? suc n with m ≤? n
... | yes p = yes (s≤s p)
... | no ¬p = no (¬p ∘ p≤p)
\end{code}
\fi

\begin{code}
{-# TERMINATING #-}
div-suc : ℕ → ℕ → ℕ
div-suc x y with x ≤? y
... | yes _  = x
... | no _   = suc (div-suc (x - suc y) y)
\end{code}

However, the termination checker fails to infer that \AgdaBound{x} \AgdaFunction{-} \AgdaInductiveConstructor{suc} \AgdaBound{y} is smaller than \AgdaBound{x}.
For a definition that will pass the termination checker, we need to make clear in the structure of terms that arguments get smaller.

\begin{code}
div-suc′ : ℕ → ℕ → ℕ
div-suc′ x y = helper zero x y
  where
  helper : ℕ → ℕ → ℕ → ℕ
  helper res zero y′            = res
  helper res (suc x′) zero      = helper (suc res) x′ y
  helper res (suc x′) (suc y′)  = helper res x′ y′
\end{code}

The keyword \AgdaKeyword{where} introduces a group of definitions with access to any variables bound on the lefthand side of the parent definition (the variables \AgdaBound{x} and \AgdaBound{y} here) and available only to the parent definition.
The \AgdaKeyword{where} block is delimited by indentation, as with most uses of \AgdaKeyword{where} in Agda.

The \AgdaFunction{helper} function is defined tail recursively, so can be understood as a loop carrying state.
The strategy is to count down in both \AgdaBound{x} and \AgdaBound{y} (third case), and whenever \AgdaBound{y} reaches 0 (second case), we add 1 to the accumulator \AgdaBound{res} and reset \AgdaBound{y}.
When \AgdaBound{x} reaches 0, we are done, and return the number of times \AgdaBound{y} reached 0.
Notice that the second argument gets structurally smaller at each step, and thus the function can be checked as terminating.

For further reading, see~\cite{Abel98}, upon which Agda's termination checker is based.

\subsubsection{Productivity}

Dual to termination, Agda has a notion of \emph{productivity}.
Whereas we talk about whether a function consuming well founded data terminates, we can talk about whether an inhabitant of a non-well founded \emph{codata} type is productive.
For an expression to be productive means that it can be evaluated to a constructor application in finite time.
To see an example, I introduce \AgdaDatatype{Colist}, the type of potentially infinite lists.

\iffalse
\begin{code}
open import Coinduction
\end{code}
\fi

\begin{code}
data Colist {a} (A : Set a) : Set a where
  []   :                     Colist A
  _∷_  : A → ∞ (Colist A) →  Colist A
\end{code}

The new thing here is the type family \AgdaDatatype{∞}, which can be read as ``delayed''.
For any type \AgdaBound{X}, \AgdaDatatype{∞} \AgdaBound{X} is the type of \AgdaBound{X} values evaluated non-strictly.
This, for example, allows us to make an infinite colist in the following way.

\begin{code}
zeros : Colist ℕ
zeros = zero ∷ ♯ zeros
\end{code}

The \AgdaCoinductiveConstructor{♯\_} constructor, pronounced ``delay'', turns an expression for \AgdaBound{X} into a value of \AgdaDatatype{∞} \AgdaBound{X}.
It is handled specially by the compiler, so that the above definition is not marked as non-terminating.
Instead, it is checked as being \emph{productive}, because \AgdaFunction{zeros} immediately evaluates to an application of \AgdaInductiveConstructor{\_∷\_}.

Another example is \AgdaFunction{map}, which demonstrates use of colists by a function.

\begin{code}
map : ∀ {a b} {A : Set a} {B : Set b} → (A → B) → (Colist A → Colist B)
map f []        = []
map f (x ∷ xs)  = f x ∷ ♯ map f (♭ xs)
\end{code}

The \AgdaField{♭} accessor, pronounced ``force'', retrieves an \AgdaBound{X} value from a \AgdaDatatype{∞} \AgdaBound{X} value.
Note that \AgdaField{♭} \AgdaBound{xs} is not structurally smaller than \AgdaBound{x} \AgdaInductiveConstructor{∷} \AgdaBound{xs}, so this function is not checked as terminating.
Instead, it is productive because in each case, the thing produced is a constructor application.

Like the termination checker, the productivity checker is conservative.
The following example demonstrates a productive definition that fails to be checked so.
For this, we need some helper functions.

\begin{code}
_++c_ : ∀ {a} {A : Set a} → Colist A → Colist A → Colist A
[]        ++c ys  = ys
(x ∷ xs)  ++c ys  = x ∷ ♯ (♭ xs ++c ys)

replicate : ∀ {a} {A : Set a} → ℕ → A → Colist A
replicate zero     x  = []
replicate (suc n)  x  = x ∷ ♯ replicate n x
\end{code}

Then, we attempt to write a function which takes a colist and returns a colist with 1 copy of the first item, 2 copies of the second item, and so on.
Given our helper functions, we would like to write this in the following way.
We keep a counter \AgdaBound{n}, telling us where in the input colist we are.
Then, we replicate the current item this many times, and append the rest of the output colist.

\begin{code}
{-# TERMINATING #-}
expand : ∀ {a} {A : Set a} → Colist A → Colist A
expand {a} {A} = helper (suc zero)
  where
  helper : ℕ → Colist A → Colist A
  helper n []        = []
  helper n (x ∷ xs)  = replicate n x ++c helper (suc n) (♭ xs)
\end{code}

However, the productivity checker is unable to infer that \AgdaFunction{replicate} and \AgdaFunction{\_++c\_} will compose to make something productive.
We again need to assert that the definition is well behaved by using the \AgdaSymbol{\{-\#} \AgdaKeyword{TERMINATING} \AgdaSymbol{\#-\}} pragma.
The alternative is to expand out the definitions of the helper functions so as to make clear syntactically that in each case, we have a constructor application before any recursive calls.

\begin{code}
expand′ : ∀ {a} {A : Set a} → Colist A → Colist A
expand′ {a} {A} = helper zero zero
  where
  helper : ℕ → ℕ → Colist A → Colist A
  helper n c        []        = []
  helper n zero     (x ∷ xs)  = x ∷ ♯ helper (suc n) (suc n) (♭ xs)
  helper n (suc c)  (x ∷ xs)  = x ∷ ♯ helper n c (♭ xs)
\end{code}

\section{Shortest distance problems}\label{sec:shortest-distance-problems}

In a shortest distance problem, we are given a weighted graph and a source vertex, and required to give, for each vertex, the shortest distance from the source to that vertex.
Simpler versions of the problem have well known solutions.
For example, when we can guarantee that all distances are positive numbers, Dijkstra's algorithm will give us shortest distances.
However, for cases where the weights are less well behaved, there is still ongoing research (see, e.g.~\cite{Griffin10}).

\subsection{Semirings}

\begin{table}[t]
  \begin{tabularx}{\linewidth}{l|X|X}
    Property & Definition & Example
    \\ \hline
    $*$ is associative & $(a * b) * c = a * (b * c)$ & addition
    \\ \hline
    $*$ is commutative & $a * b = b * a$ & addition
    \\ \hline
    $*$ is idempotent & $a * a = a$ & binary $\min$ operator
    \\ \hline
    $1$ is the identity of $*$ & $1 * a = a = a * 1$ & 1 for multiplication
    \\ \hline
    $0$ is the annihilator of $*$ & $0 * a = 0 = a * 0$ & 0 for multiplication
    \\ \hline
    $*$ distributes over $\bullet$ & $a * (b \bullet c) = (a * b) \bullet (a * c)$ and $(b \bullet c) * a = (b * a) \bullet (c * a)$ & multiplication distributes over addition
  \end{tabularx}
  \caption{Glossary of algebraic properties. $a$, $b$, and $c$ are universally quantified throughout.}
  \label{tab:properties}
\end{table}

We say that a tuple $(\mathbb K, \bar 0, \bar 1, \oplus, \otimes)$, with $\bar 0, \bar 1 : \mathbb K$ and $\oplus, \otimes : \mathbb K \times \mathbb K \to \mathbb K$, is a semiring if it satisfies the following properties, in terms of the definitions in Table \ref{tab:properties}.
\begin{enumerate}
  \item
    $(\mathbb K, \bar 0, \oplus)$ forms a commutative monoid.
    Explicitly,
    \begin{itemize}
      \item
        $\oplus$ is associative and commutative.
      \item
        $\bar 0$ is the identity element of $\oplus$.
    \end{itemize}
  \item
    $(\mathbb K, \bar 1, \otimes)$ forms a monoid.
    Explicitly,
    \begin{itemize}
      \item
        $\otimes$ is associative.
      \item
        $\bar 1$ is the identity element of $\otimes$.
    \end{itemize}
  \item
    $\otimes$ distributes over $\oplus$.
  \item
    $\bar 0$ is the annihilator for $\otimes$.
\end{enumerate}

Semirings, also known as \emph{rigs} (from the mnemonic ``ri\textbf{n}g without \textbf{n}egation'') occur often in computer science, given that they abstract a common notion of having two interacting irreversible binary operations.
As the notation suggests, an example of a semiring is $(\mathbb N, 0, 1, +, \times)$
We can replace $\mathbb N$ by $\mathbb Z$, $\mathbb Q$, $\mathbb R$, and $\mathbb C$, still getting a semiring for each.
The set of regular languages also forms a semiring, where $\bar 0$ is the empty language, $\bar 1$ is the language containing only the empty string, $\oplus$ is the alternation operator $|$, and $\otimes$ is concatenation of regular expressions representing the languages.
There is a similar semiring for arbitrary formal languages~\cite{Droste2009}.

Sometimes some of the conditions are dropped, particularly the conditions that $\bar 0$ is an annihilator and that $\bar 1$ is an identity element.
For algebraic routing problems, we need to enforce more conditions.
Agda's standard library~\cite{stdlib} already contains a definition for \AgdaDatatype{Semiring} in the \AgdaModule{Algebra} module.

\subsection{Algebraic routing problems}\label{sec:algebraic-routing-problems}

Many shortest distance problems can be described by a semiring and a class of graphs whose weights are elements of the semiring.
Here, $\otimes$ represents composition of distances along a path, and $\oplus$ represents the choice of the shortest amongst two distances.
Then, for distances $a$ and $b$, we say that $a \leq b$ iff $a \oplus b = a$ --- that is, out of $a$ and $b$, $a$ is chosen by $\oplus$ as shortest.
In the standard setup for Dijkstra's algorithm~\cite{Dijkstra1959}, $\mathbb K$ (the set of weights) is $\mathbb N \cup \{ \infty \}$, $\bar 0$ (the least-chosen distance) is $\infty$, $\bar 1$ (the trivial distance) is $0$, $\oplus$ (the choice operator) is $\min$, and $\otimes$ (the composition operator) is $+$.

\begin{table}[t]
  \begin{tabularx}{\linewidth}{X|c|c|c|c|c}
  \thead{Problem} & \thead{$\mathbb K$ \\ weights} & \thead{$\bar 0$ \\ worst} & \thead{$\bar 1$ \\ trivial} & \thead{$\oplus$ \\ choice} & \thead{$\otimes$ \\ composition}
  \\
  \hline
  Shortest path & $\mathbb N \cup \{\infty\}$ & $\infty$ & $0$ & $\min$ & $+$
  \\
  Maximum capacity path & $\mathbb N \cup \{\infty\}$ & $0$ & $\infty$ & $\max$ & $\min$
  \\
  Most reliable path & $[0,1]$ & $0$ & $1$ & $\max$ & $\times$
  \end{tabularx}
  \caption{A selection of algebraic routing problems~\cite{Griffin12}}
  \label{tab:problems}
\end{table}

The abstraction of the semiring framework lets us consider related problems.
\hyperref[tab:problems]{Table \ref*{tab:problems}} gives three example problems and their corresponding semirings.
The problem for which I implement a solution has the distinction that the distance choice operator $\oplus$ is not selective.
This means that we don't always have either $a \oplus b = a$ or $a \oplus b = b$, or equivalently $a \leq b$ or $b \leq a$, as we would have if $\oplus$ were $\min$ or $\max$.
The problem also allows for negative weights, with the condition that there is a natural number $k$ such that for any cycle $c$ in the graph, a path that goes around $c$ more than $k$ times will not improve on a path that goes around $c$ only $k$ times.
An algorithm for this is given and proven correct in a 2002 paper by Mohri~\cite{Mohri02}, who describes and defines rigorously the condition as $\mathbb K$ being $k$-closed on graph $G$.
This will be explained in the following section.

\subsection{Mohri's algorithm}

We start by giving a definition of what it means for a semiring to be $k$-closed on a graph.
Let $\mathbb K$ be a semiring, $k$ be a natural number, and $G$ be a graph weighted by elements of $\mathbb K$.
Let $w[\pi]$ denote the weight of a path $\pi$, that is, the $\otimes$-product of the weights of the edges in $\pi$, in order.
Then, $\mathbb K$ is \emph{$k$-closed for $G$} iff, for any cycle $\pi$ in $G$, the following holds.

\begin{align*}
  \bigoplus_{n=0}^{k+1} w[\pi]^n = \bigoplus_{n=0}^{k} w[\pi]^n
\end{align*}

Here, for $a$ in $\mathbb K$ and natural number $n$, $a^n = \bigotimes_{i=1}^{n} a$.
This means that $w[\pi]^n$ is the cost of going $n$ times around the cycle $\pi$.
The $\oplus$ operator combines two weights into a single weight at least as good as both operands
Given this, our $k$-closedness property states that given a cycle $\pi$, going $k+1$ times around $\pi$ gives no improvement above going $k$ or fewer times around $\pi$.

If this condition did not hold for any $k$, there would be some cycle $\pi$ such that going around it again would improve the weight of any path.
An example of this is having a negative-weight cycle in a classical shortest distance problem.
Thus, we can say that $k$-closedness on the graph is a minimal precondition for shortest distances being reflective of actual finite paths.

Next, we define what ``shortest distance'' means.
In doing this, we consider $P(q)$, the set of all paths from a fixed source vertex $s$ to $q$.
Note that in any graph containing a cycle, $P(q)$ will be countably infinite, as going around a cycle $n$ times gives a new path for each $n$.
We write the shortest distance from $s$ to $q$ as $\delta(s, q)$, and define it in the following, where $Q$ is the set of vertices in the graph.

\begin{align*}
\delta(s, s) &= \bar 1 \\
\forall q \in Q \setminus \{s\}.~\delta(s, q) &= \bigoplus_{\pi \in P(q)} w[\pi]
\end{align*}

Mohri does not define the notion of an infinite sum, but I will as part of the Implementation.
All we need to know at the moment is that if $\mathbb K$ is $k$-closed on $G$, we can limit the paths under consideration to $P_k(q)$, which is the set of all paths in $P(q)$ such that any cycle is only repeated at most $k$ times.
This is because going $k+1$ times around a cycle $c$ would not give a shorter distance than just going $k$ times around $c$, so we don't need to consider any paths where a cycle is repeated more than $k$ times.
Crucially, $P_k(q)$ is finite, so $\bigoplus_{\pi \in P_k(q)} w[\pi]$ is well defined.

Finally, we can define the algorithm I will be working with.
I reproduce it verbatim from Section 3.1 of~\cite{Mohri02}.

\begin{codebox}
\Procname{$\proc{Generic-Single-Source-Shortest-Distance}~(G,s)$}
\li \For $i \gets 1$ \To $|Q|$
\li   \Do
      $d[i] \gets r[i] \gets \bar 0$
      \End
\li $d[s] \gets r[s] \gets \bar 1$
\li $S \gets \{s\}$
\li \While $S \neq \emptyset$
\li   \Do
      $q \gets \mathit{head}(S)$
\li   $\proc{Dequeue}(S)$
\li   $r' \gets r[q]$
\li   $r[q] \gets \bar 0$
\li   \For each $e \in E[q]$
\li     \Do
        \If $d[n[e]] \neq d[n[e]] \oplus (r' \otimes w[e])$
\li       \Then
          $d[n[e]] \gets d[n[e]] \oplus (r' \otimes w[e])$
\li       $r[n[e]] \gets r[n[e]] \oplus (r' \otimes w[e])$
\li       \If $n[e] \notin S$
\li         \Then
            $\textsc{Enqueue}(S, n[e])$
            \End
          \End
        \End
      \End
\li $d[s] \gets \bar 1$
\end{codebox}

In this algorithm, $G$ is the graph and $s$ is the source vertex in that graph.
$S$ is a queue of vertices, which can have arbitrary queueing discipline.
A vertex $q$ is said to be \emph{relaxed} when lines 6-15 have been run on it, so $S$ contains the vertices which are candidates for relaxation.
The array $d$ stores our shortest distance estimates.
When the algorithm terminates, $d[q]$ will be the shortest distance from $s$ to $q$.
$r[q]$ records the shortest distance $\oplus$-added to $d[q]$ since $q$ was last relaxed.

We also have some helper functions.
$p[e]$ and $n[e]$ are respectively the start and end vertices of the edge $e$.
$E[q]$ is the set of edges starting at $q$, i.e., those edges $e$ such that $p[e] = q$.
This is only ever iterated over, so can be implemented as a linked list.
The order of $E[q]$ matters only for the order in which vertices are added to $S$.
In the algorithm, $w$ is used only on edges, rather than paths.
Finally, we have the three queue operations, $\mathit{head}$, $\proc{Dequeue}$, and $\proc{Enqueue}$, with which the reader is assumed to be familiar.

The initialisation section (lines 1-4) says that our first shortest distance estimate is that the distance from $s$ to $s$ is trivial, and for $q \neq s$, the distance from $s$ to $q$ is the least wanted distance.
At this point, $r = d$ because no relaxation has yet happened.
We also start off the algorithm at the source vertex by enqueueing $s$ only.

Lines 6-7 take a vertex $q$ from $S$.
Line 8 records the best distance $\oplus$-added to $d[q]$ since the last relaxation of $q$, before line 9 resets $r[q]$ to the least-chosen distance $\bar 0$.

Using the definition of $\leq$ given in \hyperref[sec:algebraic-routing-problems]{Section \ref*{sec:algebraic-routing-problems}}, we can rewrite the test on line 11 as $d[n[e]] \nleq r' \otimes w[e]$.
We can also read the condition directly as saying that when we $\oplus$-choose between $d[n[e]]$ and $r' \otimes w[e]$, the resulting choice is not $d[n[e]]$, and thus better (shorter) than $d[n[e]]$.
Rememebering how we set $r'$, $r' \otimes w[e]$ is the shortest distance added from $s$ to $q$ since last time $q$ was relaxed, composed with the distance of the edge $e$.

If the test on line 11 succeeds, we $\oplus$-add $r' \otimes w[e]$ to our shortest distance estimate for $q$, and correspondingly $\oplus$-add this to $r[n[e]]$.
Finally, just as in Dijkstra's algorithm, we add any vertices with updated distance estimate to the queue on lines 14-15.

%At first, it is not obvious that this algorithm terminates, or that when it does terminate, it gives a correct result.
%Mohri provides a proof that the algorithm does indeed terminate with the correct result, though the lemmas leading up to the main theorem are unintuitive, and the proof is difficult to follow.

%\input{lhs/Preparation}

\section{Haskell}

As well as the Agda implementation of Mohri's algorithm, I also produce an unverified version in the programming language Haskell~\cite{Haskell2010}.
Haskell is a functional programming language differing from ML in two major aspects.

\begin{itemize}
  \item
    Haskell programs are evaluated lazily by default.
  \item
    Haskell has a less expressive module system, and handles ad-hoc polymorphism instead by \emph{type classes}.
\end{itemize}

I choose Haskell for this task for two reasons.

\begin{itemize}
  \item
    Haskell is comparable to Agda in how it expresses algorithms.
    Both are pure functional programming languages, so the implementations of Mohri's algorithm in each appear and act similarly.
  \item
    Agda's main compiler backend outputs Haskell code.
    This allows me to do performance tests on the Agda implementation using the same tools as the tests on the unverified implementation.
\end{itemize}

\section{Requirements analysis}

The project consists of two distinct phases.
The first of these consists of reproducing the theory, algorithm, and proofs of~\cite{Mohri02} in Agda.
The second consists of implementing the same algorithm in Haskell, and running performance tests on this implementation.

I take the Agda standard library~\cite{stdlib} as the starting point of the first part.
It defines many basic data structures, including most things covered in this chapter, and also defines functions and lemmas about them.
Semirings are defined, but with very few lemmas.
Also, there is nothing in the standard library about graphs, so I must develop several of the notions taken for granted in Section 2 of~\cite{Mohri02}.
With this done, I implement the algorithm and proofs about it from scratch.

For the Haskell implementation, there is more existing work to build from.
Particularly, there are already performant implementations of graphs and priority queues.
Furthermore, I do not make any formal proofs about the Haskell implementation.
Additional to the implementation of Mohri's algorithm, I give an implementation of Dijkstra's algorithm for comparison.

I use the package manager Stack~\cite{stack} to manage Haskell dependencies.
This, when used alongside the Glasgow Haskell Compiler~\cite{ghc}, also gives profiling tools.

For version control, I use Git~\cite{git}.
This allows me to experiment with implementation choices without risk of losing previous work.
I pair this with GitHub~\cite{github}, which provides a remote back-up and eases sharing of work with supervisors.

\end{document}
