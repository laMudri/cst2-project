\chapter{Preparation}

\iffalse
\begin{code}
module Preparation where
\end{code}
\fi

\section{Agda}

Dependent typing, the ability for types to make reference to values, makes it much easier to give programs expressive types which capture the behaviour of the program.
Because types are checked by the compiler, this gives us a flexible way to verify the behaviour of programs.
Agda is a programming language with full support for dependent types.

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
\AgdaArgument{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every constructor produces a value with arbitrary parameter value.
In contrast, indices allow specific values to come from constructors, as seen by the index taking the values \AgdaInductiveConstructor{zero} and \AgdaInductiveConstructor{suc} \AgdaArgument{n} at in the result type of each constructor respectively.
It is an important distinction that parameters are named, and their names are available throughout the definition.
On the other hand, even though indices can be named, they are only available until the \AgdaKeyword{where} keyword.
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
Similar is done with declarations, but we require the symbol \AgdaSymbol{∀}.
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

A less obvious use of the module system is when dealing with algebraic structures.
We typically define a new algebraic structures using a record, similar to how structures are defined as sets of tuples in mathematics.
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

We can also write definitions generic in the \AgdaDatatype{RawFunctor} supplied using parametrised modules, as in the previous section.
Conveniently, Agda has a way of converting a record value into a module, using the name of the record followed by the value.
This makes record types and record values act like ML signatures and structures, respectively.

\begin{code}
module RawFunctorUtils {a} (RF : RawFunctor a) where
  open RawFunctor RF  -- This puts `F' and `map' in scope.

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

\section{Shortest distance problems}

The other main component of the project is shortest distance problems.
In a shortest distance problem, we are given a weighted graph and a source vertex, and required to give, for each vertex, the shortest distance from the source to that vertex.
Simpler versions of the problem have well known solutions.
For example, when we can guarantee that all distances are positive numbers, Dijkstra's algorithm will give us shortest distances.
However, for cases where the weights are less well behaved, there is still ongoing research.

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
Sometimes some of the conditions are dropped, particularly the conditions that $\bar 0$ is an annihilator and that $\bar 1$ is an identity element.
For algebraic routing problems, we need to enforce more conditions.
Agda's standard library~\cite{stdlib} already contains a definition for \AgdaDatatype{Semiring} in the \AgdaModule{Algebra} module.

\subsection{Algebraic routing problems}

Most shortest distance problems can be described by a semiring and a class of graphs whose weights are elements of the semiring.
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
\autoref{tab:problems} gives three example problems and their corresponding semirings.
The problem for which I implement a solution has the distinction that the distance choice operator $\oplus$ is not selective.
This means that we don't always have either $a \oplus b = a$ or $a \oplus b = b$, or equivalently $a \leq b$ or $b \leq a$, as we would have if $\oplus$ were $\min$ or $\max$.
The problem also allows for negative weights, with the condition that there is a natural number $k$ such that for any cycle $c$ in the graph, a path that goes around $c$ more than $k$ times will not improve on a path that goes around $c$ only $k$ times.
An algorithm for this is given and proven correct in a 2002 paper by Mohri~\cite{Mohri02}, who describes and defines rigorously the condition as $\mathbb K$ being $k$-closed on graph $G$.

\subsection{Mohri's algorithm}

%However, the proof is technical and unintuitive, and we would like to be surer that it is actually correct.

\section{Haskell}

Haskell is a pure functional programming language predating Agda.
It has a syntax similar to that of Agda, though, being a programming language and not a proof assistant, source files usually only use ASCII characters.
Haskell does not have dependent types, and so introduces a syntactic distinction between the value level and the type level, including having separate namespaces for each level.
However, modern Haskell has several features inspired by dependent types, some of which are used in this project.

The code in this section constitutes a valid Haskell file.
The following is the first few lines of the file.

\begin{lstlisting}
{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables #-}
module Scratch where

import Prelude hiding (Functor(..), Applicative(..), map, (++), replicate)

import Data.Proxy
import GHC.TypeLits
\end{lstlisting}

\subsection{Type classes}

Whereas in Agda, we describe and use algebraic structures using dependent records and parametrised modules, Haskell's \emph{type class} system is dedicated to this purpose.
A type class can be compared to an interface from object-oriented programming, and gives a way to associate certain definitions with ad-hoc classes of types.
Using the example from \autoref{sec:modules-for-polymorphism}, we can define \texttt{Functor} by the following.

\begin{lstlisting}
class Functor f where
  map :: (a -> b) -> (f a -> f b)
\end{lstlisting}

Note that Haskell uses double colon in a similar way to Agda's single colon.
It also doesn't explicitly quantify over type variables \texttt{a} and \texttt{b}; they are assumed to be universally quantified over the given type signature.
This code states that a type-level function (a mapping from inhabitants of \texttt{*}, similar to Agda's \AgdaPrimitiveType{Set}, to inhabitants of \texttt{*}) \texttt{f} is a \texttt{Functor} if we can produce a function \texttt{map} that polymorphically takes functions of type \texttt{a -> b} to functions of type \texttt{f a -> f b}.

We provide such an \texttt{f}, we give an instance of the class.
Before that, I will define an alternative \texttt{List} type to the one provided as standard, without the syntactic sugar.

\begin{lstlisting}
data List a = Nil | Cons a (List a)
\end{lstlisting}

Haskell datatype definitions are similar to ML datatype definitions, with largely inessential differences.
The definition above says that, for all types \texttt{a}, \texttt{Nil} is an inhabitant of \texttt{List a}, and given \texttt{x :: a} and \texttt{xs :: List a}, \texttt{Cons x xs} is an inhabitant of \texttt{List a}.

Our \texttt{Functor} instance of \texttt{List} is as follows.

\begin{lstlisting}
instance Functor List where
  map f Nil = Nil
  map f (Cons x xs) = Cons (f x) (map f xs)
\end{lstlisting}

\texttt{map} on \texttt{List} is a function that takes a function \texttt{f} and applies \texttt{f} to each element of the list, producing a new list with potentially distinct element type.

In using this type class, we notice something different than what we had in Agda.
Firstly, the class definition automatically makes \texttt{map} globally available, so we don't need to open a module to access it.
\texttt{map} is given the type \texttt{(Functor f) => (a -> b) -> (f a -> f b)}, where \texttt{(Functor f)} is a \emph{constraint}.
Whenever \texttt{map} is used, the type checker will first infer the values of type variables \texttt{a}, \texttt{b}, and \texttt{f}, and then check that there is a declared instance of \texttt{Functor f} to satisfy the constraint.
In a utility function, like the following, we pass on the class constraint by mentioning it in the type of the function.

\begin{lstlisting}
replaceAll :: (Functor f) => b -> f a -> f b
replaceAll x = map (\ _ -> x)
\end{lstlisting}

To use the \texttt{Functor List} instance, we can write something similar, noting that \texttt{f} being \texttt{List} is enough to satisfy the \texttt{Functor f} constraint on any utility functions.

\begin{lstlisting}
zeroify :: List a -> List Integer
zeroify xs = replaceAll 0 xs
\end{lstlisting}

We form hierarchies of type classes by listing prerequisites of new classes.
For example, we can introduce \emph{applicative functors}, which extend functors with some new members.

\begin{lstlisting}
class (Functor f) => Applicative f where
  pure  :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b
\end{lstlisting}

Instances of classes with prerequisites differ from other instances only in that the prerequisite instances must have been given beforehand.
We need an append function \texttt{++} before we can write the desired instance.

\begin{lstlisting}
(++) :: List a -> List a -> List a
Nil         ++ ys = ys
(Cons x xs) ++ ys = Cons x (xs ++ ys)

instance Applicative List where
  pure x = Cons x Nil

  Nil         <*> xs = Nil
  (Cons f fs) <*> xs = map f xs ++ (fs <*> xs)
\end{lstlisting}

Note that this is another use of \texttt{map} specialised to \texttt{List}.
The instance here says that \texttt{pure} makes a singleton of the element it is given, and \texttt{(<*>)} (pronounced ``ap'') applies each function of the left argument to each element of the right argument.

\subsection{Values in types}

Haskell does not support dependent types like Agda does.
However, modern Haskell has some features that give an approximation of dependent types that we can use to express programs more clearly.
To demonstrate this, I will define a type of lists which carry a natural number at the type level, which is intended to be the length of the list.

To achieve this, I need to enable various language extensions.
The \texttt{DataKinds} extension allows any datatype to be used as a \emph{kind}, a type of types.
Usually, the only kinds in Haskell are \texttt{*}, containing all datatypes, and for kinds \texttt{k} and \texttt{k'}, we have the kind \texttt{k -> k'}, the kind of type-level functions from \texttt{k} to \texttt{k'}.
With \texttt{DataKinds}, for each type, a corresponding kind is introduced, thus allowing values of the type to be used in place of types.
Together with this is \texttt{KindSignatures}, which allows annotation of type variables and type expressions with kinds, just like how normal variables and expressions can be annotated with types.
Finally, we have \texttt{ScopedTypeVariables}, which I will explain later.
With these, we can write a type definition.

\begin{lstlisting}
data Vec (n :: Nat) a = MkVec (List a)
\end{lstlisting}

Unlike with the Agda definition, we note that the length of the list is not checked against the type index by the compiler, as we can pair any \texttt{n} with any list.
If we wanted to enforce the invariant that \texttt{n} is the length of the list, we would do so by hiding the constructor and only exporting functions which maintain the invariant.

This definition already makes use of the first two language extensions.
\texttt{Nat} is a datatype defined in \texttt{GHC.TypeLits}, and is lifted up to be a kind using \texttt{DataKinds}.
Then, we need \texttt{KindSignatures} to state that \texttt{n} should be a natural number, not a type.

We can give this the same functor instance as \texttt{List} for any particlar \texttt{n}.

\begin{lstlisting}
instance Functor (Vec n) where
  map f (MkVec xs) = MkVec (map f xs)
\end{lstlisting}

However, for the applicative functor instance, we need to do something different.
The applicative functor instance for \texttt{List} has a \texttt{pure} that always returns a list of length 1, and an \texttt{(<*>)} that returns a list whose length is the product of the lengths of the input lists.
Because we have some fixed \texttt{n}, we want \texttt{pure} and \texttt{(<*>)} to deal only with vectors of length \texttt{n}.
We do this as follows.

\begin{lstlisting}
replicate :: Integer -> a -> List a
replicate 0 x = Nil
replicate n x = Cons x (replicate (n - 1) x)

ap :: List (a -> b) -> List a -> List b
ap Nil         Nil         = Nil
ap (Cons f fs) (Cons x xs) = Cons (f x) (fs <*> xs)
ap _           _           = error "Lists of different length"

instance (KnownNat n) => Applicative (Vec n) where
  pure x = MkVec (replicate n' x)
    where
    n' :: Integer
    n' = natVal (Proxy :: Proxy n)

  MkVec fs <*> MkVec xs = MkVec (ap fs xs)
\end{lstlisting}

There are several specifics in this example.
The class \texttt{KnownNat} comes from \texttt{GHC.TypeLits}, and represents the index \texttt{n} being available at run-time.
\texttt{natVal} is a method of this type class, and gives access to the natural number value as a built-in \texttt{Integer}.
\texttt{KnownNat n} is a prerequisite of the instance, meaning that \texttt{Vec n} forms an applicative functor whenever we are guaranteed to know \texttt{n} at run-time.

The token \texttt{Proxy} occurs twice in the definition of \texttt{pure}: once as a value constructor, to the left of the double-colon; and once as a type constructor, to the right of the double-colon.
Where \texttt{a} is some type-level value, \texttt{Proxy a} is a type with a single inhabitant \texttt{Proxy}.
The proxy value here carries the type-level value \texttt{n} into \texttt{natVal}, eventually giving us a value-level value.
\texttt{n} is in scope here due to \texttt{ScopedTypeVariables}, it being shared throughout the instance definition.

\section{Requirements analysis}
