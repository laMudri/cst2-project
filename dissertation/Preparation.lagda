\documentclass{article}

\begin{document}

\chapter{Preparation}

\iffalse
\begin{code}
module Preparation where
\end{code}
\fi

In this chapter, I give an overview of the main concepts used in the remainder of this report.
In \hyperref[sec:agda]{Section \ref*{sec:agda}}, I introduce the programming language Agda, which I use to formalise the theory underpinning the shortest distance algorithm.
Then, in \hyperref[sec:shortest-distance-problems]{Section \ref*{sec:shortest-distance-problems}}, I give an informal introduction to the use of semirings in shortest distance problems.
This is also where I state and discuss the algorithm of Mohri, which is the focus of this project.
Third, in \hyperref[sec:haskell]{Section \ref*{sec:haskell}}, I give a summary of the Haskell features I use in the performance testing code that will be novel to a reader familiar with a statically typed functional programming language like ML, but not Haskell specifically.
Finally, in \hyperref[sec:requirements-analysis]{Section \ref*{sec:requirements-analysis}}, I clarify how the implementation is split into distinct sections, and what tools are used for implementation and organisation.

\section{Agda}\label{sec:agda}

%Dependent typing, the ability for types to make reference to values, makes it much easier to give programs expressive types which capture the behaviour of the program.
%Because types are checked by the compiler, this gives us a flexible way to verify the behaviour of programs.
%Agda is a programming language with full support for dependent types.

Dependent typing, the ability for types to make reference to values, offers several new possibilities in software engineering.
For one, dependent types allow us to use in programming some concepts from mathematics that are otherwise difficult to express.
For example, mathematics often makes use of vectors over a set $X$ of some fixed length $n$, denoted $X^n$.
In most programming languages, we are either restricted to special cases such as 2-element and 3-element vectors, or use lists of arbitrary length.
The latter leaves us without compile-time checks that, for example, the two operands in a vector addition have the same length.

Also, dependent types give us the tools to give precise types to many of the programs we want to write.
To see this, we consider again difficulties in using lists of arbitrary length.
A function we often define on lists is an indexing function, which returns the $i$th element of a list.
However, this function can fail at runtime with an ``index out of bounds'' error if $i$ is too large for the list.
This means that whenever we use an indexing function, we must consider what would happen if $i$ were out of bounds, or else risk a runtime error.
Dependent types give us a second option.
We can instead use an indexing function that requires a proof that $i$ is in bounds (that $i$ is less than the length of the list) and then never throws an error.
With dependent types, we can form a type of such proofs, which give us machine-checked assertions about our programs.

Agda is a pure functional programming language with full support for dependent types.
It is intended to be a practical tool for both programming and proving, both of which I introduce in this section.

\subsection{Programming in Agda}

An example that demonstrates dependent types is \AgdaDatatype{Fin} \AgdaArgument{n}, a type containing exactly \AgdaArgument{n} inhabitants, corresponding to the natural numbers less than \AgdaArgument{n}.
The description ``dependent'' applies because \AgdaArgument{n} is a value (a natural number) appearing in a type \AgdaDatatype{Fin} \AgdaArgument{n}.
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
Specifically, there is a constructor \AgdaInductiveConstructor{fzero} that makes an element of this type for any number greater than 0 (because $0 < 1$ but $0 \nless 0$), and there is a constructor \AgdaInductiveConstructor{fsuc} that takes a number less than \AgdaArgument{n} and produces a new number less than \AgdaInductiveConstructor{suc} \AgdaArgument{n}.
As in most programming languags of the Haskell/ML~\cite{Haskell2010}\cite{Milner1990}\cite{ocaml} style, the arrow of the function type associates rightward, so the type of \AgdaInductiveConstructor{fsuc} is read as \AgdaSymbol{\{}\AgdaBound{n} \AgdaSymbol{:} \AgdaDatatype{ℕ}\AgdaSymbol{\}} \AgdaSymbol{→} \AgdaSymbol{(}\AgdaDatatype{Fin} \AgdaBound{n} \AgdaSymbol{→} \AgdaDatatype{Fin} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{))}.
Furthermore, in Agda, the arrow can be a \emph{binder}, meaning that as well as having simple functions of type \AgdaArgument{A} \AgdaSymbol{→} \AgdaArgument{B}, we can have dependent functions of type \AgdaSymbol{(}\AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}, where \AgdaArgument{B} can be parametrised by \AgdaArgument{a}.
This is what we have with \AgdaArgument{n} in both constructors.
The curly braces, rather than round brackets, around \AgdaArgument{n} \AgdaSymbol{:} \AgdaDatatype{ℕ} signify that \AgdaArgument{n} is \emph{implicit}, so when we call either of the constructors, we don't have to write out this argument.
This has the effect of making \AgdaDatatype{Fin} \AgdaArgument{n} values look like natural numbers, except for their type and the `f's in the constructor names.

Implicit arguments are filled in by unification.
If no value can be inferred, or there is not enough information to disambiguate between multiple inferred values, type checking fails.
In such a situation, we may want to provide an implicit argument explicitly, which can be done by putting the desired argument in curly braces.
We can also do the reverse: to not provide a value for an explicit argument, we use an underscore character in its place.
Thus, the difference between implicit and explicit arguments is a matter of defaults, rather than anything fundamental.

We can put this type family to use alongside a type of lists of known length, known as \emph{vectors}.

\begin{code}
open import Level using (Level; _⊔_) renaming (zero to lzero; suc to lsuc)

data Vec {a : Level} (A : Set a) : ℕ → Set a where
  []   :                          Vec A zero
  _∷_  : {n : ℕ} → A → Vec A n →  Vec A (suc n)
\end{code}

The constructors for \AgdaDatatype{Vec} state that, for any type \AgdaArgument{A}, \AgdaInductiveConstructor{[]} (the empty list) is a vector of length 0, and given an element \AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A} and a vector \AgdaArgument{xs} of length $n$, \AgdaArgument{x} \AgdaSymbol{∷} \AgdaArgument{xs} (the vector formed by appending \AgdaArgument{x} to the front of \AgdaArgument{xs}) is a vector of length $1 + n$.
When reading aloud, \AgdaInductiveConstructor{[]} is read ``nil'' and \AgdaInductiveConstructor{∷} is read ``cons''.

Several new things are introduced here.
First, we import the \AgdaPostulate{Level} type.
Earlier, I mentioned that \AgdaPrimitiveType{Set} is the type of all simple datatypes.
The technical term for these is \emph{small types}, and \AgdaPrimitiveType{Set} is known as the smallest universe.
In more complex situations than those discussed so far, we encounter larger types, the first example being \AgdaPrimitiveType{Set} itself.
To say that \AgdaPrimitiveType{Set} has type \AgdaPrimitiveType{Set} is known to give rise to Hurkens' paradox~\cite{Hurkens1995}, an inconsistency comparable to Russell's paradox in set theory.
Instead, we say that \AgdaPrimitiveType{Set} is an abbreviation for \AgdaPrimitiveType{Set} \AgdaPrimitive{lzero}, and for any \AgdaArgument{ℓ} \AgdaSymbol{:} \AgdaDatatype{Level}, the type of \AgdaPrimitiveType{Set} \AgdaArgument{ℓ} is \AgdaPrimitiveType{Set} \AgdaSymbol{(}\AgdaPrimitive{lsuc} \AgdaArgument{ℓ}\AgdaSymbol{)}.
In this case, we take an implicit \AgdaPostulate{Level} parameter so as to be polymorphic over types of all levels.

We can also note the difference between \emph{parameters} \AgdaArgument{a} and \AgdaArgument{A}, appearing before the colon, and the \emph{index} of type \AgdaDatatype{ℕ}, appearing after the colon but to the left of an arrow.
%\AgdaArgument{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every mention of \AgdaDatatype{Vec} in the definition must be applied to \AgdaArgument{A} exactly.
\AgdaArgument{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every constructor produces a value with the same fixed value of the parameter.
In contrast, indices allow specific values to come from constructors, as seen by the index taking the values \AgdaInductiveConstructor{zero} and \AgdaInductiveConstructor{suc} \AgdaArgument{n} at in the result type of each constructor respectively.
It is an important distinction that parameters are named, and their names are available throughout the definition.
On the other hand, even though indices can be named, the names are only available until the \AgdaKeyword{where} keyword.
The distinction comes about mainly because of Agda's explicit handling of levels.
Parameters do not have to be quantified over by constructors, so do not affect the level of the resulting type.
On the other hand, indices have to be quantified over, meaning that the resulting type has to be in a universe strictly larger than the universe of any indices that are used.

Finally, I have introduced the \emph{mixfix operator} \AgdaInductiveConstructor{\_∷\_}.
The underscores signify places for arguments to go when the function is applied.
So, to use \AgdaInductiveConstructor{\_∷\_} on \AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A} and \AgdaArgument{xs} \AgdaSymbol{:} \AgdaDatatype{Vec} \AgdaArgument{A} \AgdaArgument{n}, we would write \AgdaArgument{x} \AgdaInductiveConstructor{∷} \AgdaArgument{xs}.
About syntax, identifiers are very free in form, and can contain almost any Unicode character.
It is common to have variables named like \AgdaArgument{a≤b} or \AgdaArgument{x∈[x]} (both without spaces).
It also means that spaces around infix operators are nearly always necessary.

With these types defined, we can move on to producing values with types using these datatypes.
An interesting example is a function that returns the \AgdaArgument{i}th element of a vector.

\begin{code}
index : {a : Level} → {A : Set a} → {n : ℕ} → Fin n → Vec A n → A
index fzero     (x ∷ xs) = x
index (fsuc i)  (x ∷ xs) = index i xs
\end{code}

This defines the function \AgdaFunction{index} recursively by pattern matching on its first argument \AgdaArgument{i}.
It is important that we never pattern match on \AgdaInductiveConstructor{[]}, and we can see why that is by looking at the implicit argument \AgdaArgument{n}.

\begin{code}
index′ : {a : Level} → {A : Set a} → {n : ℕ} → Fin n → Vec A n → A
index′ {n = suc n} fzero     (x ∷ xs) = x
index′ {n = suc n} (fsuc i)  (x ∷ xs) = index i xs
\end{code}

Both constructors of \AgdaDatatype{Fin} produce a value of type \AgdaDatatype{Fin} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaArgument{n}\AgdaSymbol{)} for some \AgdaArgument{n}.
So, when we pattern match on a \AgdaDatatype{Fin} \AgdaArgument{n} argument, we know that in both cases, \AgdaArgument{n} is of the form \AgdaInductiveConstructor{suc} \AgdaArgument{n}.
With this noted, we see what constructors make a value of type \AgdaDatatype{Vec} \AgdaArgument{A} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaArgument{n}\AgdaSymbol{)}.
The only one is \AgdaInductiveConstructor{\_∷\_}, so this is the only constructor for which we need a case.

\AgdaFunction{index} is a useful function to have for programming.
For a vector of length \AgdaArgument{n}, it can only take indices less than \AgdaArgument{n}.
The function always produces a value, and in particlar will never throw an out-of-bounds exception.
Functions that could fail need to be explicitly annotated.
With expressive types, it is usually possible to narrow the domain (restrict the preconditions) or widen the codomain (relax the postconditions) such that a potentially failing function no longer fails.

\subsection{Proving in Agda}

One kind of failure that Agda avoids is non-termination.
Unrestricted recursion can be used to cause inconsistency.
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

If we tried to reduce this to a value, we would be stuck in a loop of replacing \AgdaFunction{spin} with \AgdaFunction{spin}, and never reach a normal form.
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
We have already seen the types corresponding to implication and universal quantification --- these are non-dependent functions (\AgdaArgument{A} \AgdaSymbol{→} \AgdaArgument{B}) and dependent functions (\AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}), respectively.
To see why, we compare how the proposition can be proved and used with how the type can be constructed and deconstructed.
To prove a universal quantification $\forall x \in A. B$, where $B$ can mention $x$, we take arbitrary $x \in A$ and prove $B$ for this $x$.
If we have assumed $\forall x \in A. B$, we can put this to use by providing some specific $a \in A$, concluding that $B$ holds when $x$ is replaced by $a$.
In dependent type theory, types take the place of both sets and propositions, so having an element $a$ of set $A$ and a proof $b$ of proposition $B$ are translated to \AgdaArgument{a} being an inhabitant of \AgdaArgument{A} and \AgdaArgument{b} being an inhabitant of \AgdaArgument{B}, respectively.
This means that to produce an inhabitant of \AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}, we take an arbitrary inhabitant \AgdaArgument{x} of \AgdaArgument{A} as a function argument and return some inhabitant of \AgdaArgument{B} at this value of \AgdaArgument{x}.
To use one of these proofs, we use function application, which, from our proof \AgdaArgument{f} \AgdaSymbol{:} \AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B} and \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}, gives us an inhabitant of \AgdaArgument{B} at \AgdaArgument{a}.

To prove an implication $A \implies B$, we assume $A$ and then prove $B$.
We can reword this to say that to prove $A \implies B$, we take an arbitrary proof of $A$ and produce a proof of $B$.
This is how, in type theory, implication is a special case of universal quantification where the proposition \AgdaArgument{B} does not mention the proof of the hypothesis \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A} (though its proof might).

Other logical connectives can be defined as datatypes.
I start with \emph{disjunction}, logical \emph{or}.
With this definition, I begin to introduce some of the notational abbreviations provided by Agda.
Specifically, in a parameter list, \AgdaSymbol{\{}\AgdaArgument{a} \AgdaArgument{b} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{\}} is short for \AgdaSymbol{\{}\AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{\}} \AgdaSymbol{\{}\AgdaArgument{b} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{\}}, and similar when the curly braces are replaced by round brackets.

\begin{code}
data _⊎_ {a b : Level} (A : Set a) (B : Set b) : Set (a ⊔ b) where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B
\end{code}

\AgdaDatatype{\_⊎\_} is a \emph{tagged union} or \emph{sum} type, known as \texttt{Either} in Haskell or \texttt{result} in ML.
To prove a disjunction $A \vee B$, we must either prove $A$ or prove $B$; and when given a proof of $A \vee B$, we can consider the cases of $A$ holding or $B$ holding.
Similarly, to give an inhabitant of \AgdaArgument{A} \AgdaDatatype{⊎} \AgdaArgument{B}, we produce either \AgdaInductiveConstructor{inj₁} \AgdaArgument{a} for \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}, or \AgdaInductiveConstructor{inj₂} \AgdaArgument{b} for \AgdaArgument{b} \AgdaSymbol{:} \AgdaArgument{B}; and given a value of type \AgdaArgument{A} \AgdaDatatype{⊎} \AgdaArgument{B}, we can use pattern matching to branch based on whether it was introduced by \AgdaInductiveConstructor{inj₁} or \AgdaInductiveConstructor{inj₂}.

Notice here that for \AgdaArgument{A} at level \AgdaArgument{a} and \AgdaArgument{B} at level \AgdaArgument{b}, the formed sum type \AgdaArgument{A} \AgdaDatatype{⊎} \AgdaArgument{B} has level \AgdaArgument{a} \AgdaPrimitive{⊔} \AgdaArgument{b} --- the maximum level of \AgdaArgument{a} and \AgdaArgument{b}.
Intuitively, this ensures that whether the sum value contains a value of type \AgdaArgument{A} (via \AgdaInductiveConstructor{inj₁}) or a value of type \AgdaArgument{B} (via \AgdaInductiveConstructor{inj₂}), the type will be big enough to contain either.
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
To give an inhabitant of \AgdaDatatype{Σ} \AgdaArgument{A} \AgdaArgument{B}, we must produce an inhabitant \AgdaArgument{a} of \AgdaArgument{A} and an inhabitant \AgdaArgument{b} of \AgdaArgument{B} \AgdaArgument{a}, remembering that \AgdaArgument{B} is a \emph{function} from \AgdaArgument{A} to \AgdaPrimitiveType{Set} \AgdaArgument{b}, arranging these in the expression \AgdaArgument{a} \AgdaInductiveConstructor{,} \AgdaArgument{b}.
Similarly, when taking an inhabitant of \AgdaDatatype{Σ} \AgdaArgument{A} \AgdaArgument{B}, pattern matching gives us an inhabitant \AgdaArgument{a} of \AgdaArgument{A} and an inhabitant \AgdaArgument{b} of \AgdaArgument{B} \AgdaArgument{a}.

The type for logical conjunction, \AgdaDatatype{\_×\_}, known as the \emph{product} type and whose values are known as \emph{pairs} or \emph{tuples}, can be defined in terms of \AgdaDatatype{Σ}.
We set the second argument \AgdaArgument{B} of \AgdaDatatype{Σ} to be a constant function.
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

Notice that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaArgument{A} is not the same as \AgdaArgument{A}.
Indeed, these are not even equivalent, in the sense that there are values of \AgdaArgument{A} such that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaArgument{A} is provable, but \AgdaArgument{A} is not.
The former says that we can refute any refutation of \AgdaArgument{A}, whereas the latter says that we have a proof of \AgdaArgument{A}.
An example of where the two differ is given in the following.

\begin{code}
module UsingSet {ℓ : Level} (X : Set ℓ) where
  ¬¬lem : ¬ ¬ (X ⊎ (¬ X))
  ¬¬lem f = ¬¬X ¬X
    where
    ¬X : ¬ X
    ¬X x = f (inj₁ x)

    ¬¬X : ¬ ¬ X
    ¬¬X g = f (inj₂ g)

  -- Not provable:
  -- lem : X ⊎ (¬ X)
  -- lem = ?
\end{code}

In the first proof, we note that \AgdaFunction{¬} \AgdaFunction{¬} \AgdaSymbol{(}\AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{))} is just \AgdaSymbol{(}\AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥}, i.e., a function which takes a function \AgdaArgument{f} \AgdaSymbol{:} \AgdaBound{X} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaBound{X}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaDatatype{⊥} and returns an inhabitant of \AgdaDatatype{⊥}.
But we can split \AgdaArgument{f} into two functions of types \AgdaArgument{X} \AgdaSymbol{→} \AgdaDatatype{⊥} and \AgdaFunction{¬} \AgdaArgument{X} \AgdaSymbol{→} \AgdaDatatype{⊥}
These contradict each other, producing the required inhabitant of \AgdaDatatype{⊥}.

On the other hand, the second proof fails.
We can argue why there is no such proof by an appeal to computability.
An Agda program must run on a computer, so Agda is no more powerful than a Turing machine.
In particlar, an Agda program cannot solve the halting problem.
We can encode a Turing machine programs and configurations in Agda, and produce a family of types \AgdaArgument{H} indexed on a program-configuration pair \AgdaArgument{M} which is inhabited exactly when \AgdaArgument{M} halts.
If we could prove \AgdaFunction{lem}, then we would have a proof of \AgdaArgument{H M} \AgdaDatatype{⊎} \AgdaSymbol{(}\AgdaFunction{¬} \AgdaArgument{H M}\AgdaSymbol{)} for arbitrary \AgdaArgument{M}.
But this would actually give us either some proof that \AgdaArgument{H M} holds or some proof that \AgdaFunction{¬} \AgdaArgument{H M} holds, and we can test which is given.
This solves the halting problem, so a proof of \AgdaFunction{lem} is impossible.

\subsection{Modules}

Agda has a distinctive module system.
Modules serve dual purpose --- both grouping together related definitions and offering a method of ad-hoc polymorphism.
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

In a parameter list, \AgdaArgument{a} and \AgdaSymbol{\{}\AgdaArgument{a}\AgdaSymbol{\}} are abbreviations for explicit and implicit parameters, respectively, \AgdaArgument{a} with inferred type.
In this case, the inferred type is \AgdaPrimitiveType{Level}.
Similar can be achieved in type signatures using the \AgdaSymbol{∀} symbol, as shown.
In each case, the inferred type for \AgdaArgument{n} is \AgdaDatatype{ℕ}.

The thing to notice in this example is that \AgdaArgument{a} and \AgdaArgument{A} are parameters to the module, and available to every definition inside the module.
This reduces the boilerplate code usually required in introducing the level and element type for each declaration.

To use the definitions in this module, we can either open the module directly or fill in the parameters when opening the module.

\begin{code}
open VecDefinitions

open VecDefinitions ℕ
\end{code}

The first of these introduces \AgdaFunction{index″}, \AgdaFunction{head}, and \AgdaFunction{tail} into scope, but expecting \AgdaArgument{a} and \AgdaArgument{A} as arguments before the rest of the arguments.
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

This says that a \AgdaDatatype{RawFunctor} is made up of a function \AgdaField{F} between types and a function \AgdaField{map} taking an \AgdaArgument{A} \AgdaSymbol{→} \AgdaArgument{B} function and producing an \AgdaField{F} \AgdaArgument{A} \AgdaSymbol{→} \AgdaField{F} \AgdaArgument{B} function.
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

This says that for a fixed level \AgdaArgument{a} and length \AgdaArgument{n}, vectors of that length form a functor (at level \AgdaArgument{a}).
The function \AgdaFunction{vmap} is defined recursively to apply \AgdaArgument{f} to each element of the vector it is given.
We need to define it for arbitrary \AgdaArgument{m} because the length of the list changes as we recurse into it.
We can think of \AgdaFunction{vmap} as a family of functions, with \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaInductiveConstructor{suc} \AgdaArgument{m}\AgdaSymbol{\}} defined in terms of \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaArgument{m}\AgdaSymbol{\}}.
Defining \AgdaField{map} as \AgdaFunction{vmap} \AgdaSymbol{\{}\AgdaArgument{n}\AgdaSymbol{\}} picks out the function that acts upon vectors of length \AgdaArgument{n}.

We can also write definitions generic in the \AgdaDatatype{RawFunctor} supplied using parametrised modules, as in the previous section.
%Conveniently, Agda has a way of converting a record value into a module, using the name of the record followed by the value.
Conveniently, for each declaration of a record type \AgdaDatatype{R}, Agda makes a module with the same name and a single parameter \AgdaArgument{r} \AgdaSymbol{:} \AgdaDatatype{R}.
The definitions in that module are the fields in the record, taking their values from \AgdaArgument{r}.
This makes record types and record values act like ML signatures and structures, respectively.

In the following, \AgdaField{F} and \AgdaField{map} are put into scope when we open the module \AgdaModule{RawFunctor} \AgdaArgument{RF}.

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

\section{Shortest distance problems}\label{sec:shortest-distance-problems}

In a shortest distance problem, we are given a weighted graph and a source vertex, and required to give, for each vertex, the shortest distance from the source to that vertex.
Simpler versions of the problem have well known solutions.
For example, when we can guarantee that all distances are positive numbers, Dijkstra's algorithm will give us shortest distances.
However, for cases where the weights are less well behaved, there is still ongoing research~\cite{Griffin10}.

\subsection{Semirings}

We say that a tuple $(\mathbb K, \bar 0, \bar 1, \oplus, \otimes)$, with $\bar 0, \bar 1 : \mathbb K$ and $\oplus, \otimes : \mathbb K \times \mathbb K \to \mathbb K$, is a semiring if it satisfies the following properties.
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
    That is, for all $a : \mathbb K$, $\bar 0 \otimes a = \bar 0$ and $a \otimes \bar 0 = \bar 0$.
\end{enumerate}

Semirings, also known as \emph{rigs} (from the mnemonic ``ri\textbf{n}g without \textbf{n}egation'') occur often in computer science, given that they abstract a common notion of having two interacting irreversible binary operations.
As the notation suggests, an example of a semiring is $(\mathbb N, 0, 1, +, \times)$
We can replace $\mathbb N$ by $\mathbb Z$, $\mathbb Q$, $\mathbb R$, and $\mathbb C$, still getting a semiring for each.
Completely separate from these, the set of regular languages forms a semiring, where $\bar 0$ is the empty language, $\bar 1$ is the language containing only the empty string, $\oplus$ is the alternation operator $|$, and $\otimes$ is concatenation of regular expressions representing the languages.
There is a similar semiring for arbitrary formal languages.

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
Recalling that $\oplus$ acts like a choice operator between weights, our $k$-closedness property states that in a choice of going $k+1$ times around $\pi$ and going $k$ or fewer times around $\pi$, we will always choose to go around $k$ or fewer times.

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
I reproduce it verbatim from the original paper.

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
We can also read the condition directly as saying that when we choose between $d[n[e]]$ and $r' \otimes w[e]$, we don't just get $d[n[e]]$, and $r' \otimes w[e]$ is somehow helping.
Rememebering how we set $r'$, $r' \otimes w[e]$ is the shortest distance added from $s$ to $q$ since last time $q$ was relaxed, composed with the distance of the edge $e$.

If the test on line 11 succeeds, we $\oplus$-add $r' \otimes w[e]$ to our shortest distance estimate for $q$, and correspondingly $\oplus$-add this to $r[n[e]]$.
Finally, just as in Dijkstra's algorithm, we add any vertices with updated distance estimate to the queue on lines 14-15.

At first, it is not obvious that this algorithm terminates, or that when it does terminate, it gives a correct result.
Mohri provides a proof that the algorithm does indeed terminate with the correct result, though the lemmas leading up to the main theorem are unintuitive, and the proof is difficult to follow.

\input{lhs/Preparation}

\end{document}
