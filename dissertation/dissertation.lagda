% Template for a Computer Science Tripos Part II project dissertation
\documentclass[12pt,a4paper,twoside,openright]{report}
\usepackage[pdfborder={0 0 0}]{hyperref}    % turns references into hyperlinks
\usepackage[margin=25mm]{geometry}  % adjusts page layout
\usepackage{graphicx}  % allows inclusion of PDF, PNG and JPG images
\usepackage{tabularx}
\usepackage{makecell}
\usepackage{verbatim}
\usepackage{docmute}   % only needed to allow inclusion of proposal.tex

\usepackage{agda}
\usepackage{ucs}
\usepackage[utf8x]{inputenc}
\usepackage{amsmath}
\usepackage{amssymb}
%\usepackage{bbm}
\usepackage[greek,english]{babel}
\usepackage{textcomp}
\usepackage{textgreek}
\usepackage{autofe}

\DeclareUnicodeCharacter{"2237}{::}

\raggedbottom                           % try to avoid widows and orphans
\sloppy
\clubpenalty1000%
\widowpenalty1000%

\renewcommand{\baselinestretch}{1.1}    % adjust line spacing to make
                                        % more readable

\newcommand{\mytitle}{Formalising a semiring framework for shortest-distance problems}

\begin{document}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title


\pagestyle{empty}

\rightline{\LARGE \textbf{James Wood}}

\vspace*{60mm}
\begin{center}
\Huge
\textbf{\mytitle} \\[5mm]
Computer Science Tripos -- Part II \\[5mm]
Robinson College \\[5mm]
\today  % today's date
\end{center}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Proforma, table of contents and list of figures

\pagestyle{plain}

\chapter*{Proforma}

{\large
\begin{tabularx}{\linewidth}{lX}
Name:               & \bf James D. Wood \\
College:            & \bf Robinson College \\
Project Title:      & \bf \mytitle \\
Examination:        & \bf Computer Science Tripos -- Part II, July 2017  \\
Word Count:         & \bf ? \\
Project Originator: & Dr Dominic Mulligan \\
Supervisors:        & Dr Dominic Mulligan and Matthew Daggitt \\
\end{tabularx}
}


\section*{Original Aims of the Project}

\section*{Work Completed}

\section*{Special Difficulties}

\newpage
\section*{Declaration}

I, James Wood of Robinson College, being a candidate for Part II of the Computer Science Tripos [or the Diploma in Computer Science], hereby declare that this dissertation and the work described in it are my own work, unaided except as may be specified below, and that the dissertation does not contain material that has already been used to any substantial extent for a comparable purpose.

\bigskip
\leftline{Signed}

\medskip
\leftline{Date}

\tableofcontents

\listoffigures

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% now for the chapters

\pagestyle{headings}

\chapter{Introduction}

%

\chapter{Preparation}

\section{Agda}

\subsection{Programming in Agda}

Agda~\cite{Norell07} is a functional programming language with a dependent type system, putting it in the same family of languages as Idris and Coq.
Having dependent types means that types can make reference to values.
An example that can be used to demonstrate this is \AgdaDatatype{Fin} \AgdaArgument{n}, a type containing exactly \AgdaArgument{n} inhabitants, corresponding to the natural numbers less than \AgdaArgument{n}.
First, we will see how to implement the non-dependent type of natural numbers encoded in unary.

\begin{code}
data ℕ : Set where
  zero  :      ℕ
  suc   : ℕ →  ℕ
\end{code}

This defines a type \AgdaDatatype{ℕ}, which is a \AgdaPrimitiveType{Set} (Agda's type comprising all small types).
The colon symbol can usually be read either ``has type'' or ``which has type'', depending context.
Our definition says that we have a natural number \AgdaInductiveConstructor{zero}, and a function \AgdaInductiveConstructor{suc} which takes a natural number and produces a new natural number.
Given that function/constructor application is denoted by a space, we have natural numbers \AgdaInductiveConstructor{zero}, \AgdaInductiveConstructor{suc zero}, \AgdaInductiveConstructor{suc} \AgdaSymbol{(}\AgdaInductiveConstructor{suc zero}\AgdaSymbol{)}, and so on, standing for 0, 1, and 2, respectively.

With this, we can now define \AgdaDatatype{Fin} as follows.

\begin{code}
data Fin : ℕ → Set where
  fzero  : {n : ℕ}          → Fin (suc n)
  fsuc   : {n : ℕ} → Fin n  → Fin (suc n)
\end{code}

This defines \AgdaDatatype{Fin} as a function that takes a natural number (element of \AgdaDatatype{ℕ}) and produces a small type (element of \AgdaPrimitiveType{Set}).
Specifically, there is a constructor \AgdaInductiveConstructor{fzero} that makes an element of this type for any number greater than 0 (because $0 < 1$ but $0 \nless 0$), and there is a constructor \AgdaInductiveConstructor{fsuc} that takes a number less than \AgdaArgument{n} and produces a new number less than \AgdaInductiveConstructor{suc} \AgdaArgument{n}.
As in most programming languags of the Haskell/ML style, the arrow of the function type associates rightward, so the type of \AgdaInductiveConstructor{fsuc} is read as \AgdaSymbol{\{}\AgdaBound{n} \AgdaSymbol{:} \AgdaDatatype{ℕ}\AgdaSymbol{\}} \AgdaSymbol{→} \AgdaSymbol{(}\AgdaDatatype{Fin} \AgdaBound{n} \AgdaSymbol{→} \AgdaDatatype{Fin} \AgdaSymbol{(}\AgdaInductiveConstructor{suc} \AgdaBound{n}\AgdaSymbol{))}.
Furthermore, in Agda, the arrow can be a \emph{binder}, meaning that as well as having simple functions of type \AgdaArgument{A} \AgdaSymbol{→} \AgdaArgument{B}, we can have dependent functions of type \AgdaSymbol{(}\AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}, where \AgdaArgument{B} can mention \AgdaArgument{a}.
This is what we have with \AgdaArgument{n} in both constructors.
The curly braces, rather than round brackets, around \AgdaArgument{n} \AgdaSymbol{:} \AgdaDatatype{ℕ} signify that \AgdaArgument{n} is \emph{implicit}, so when we call either of the constructors, we don't have to write out this argument.
This has the effect of making \AgdaDatatype{Fin} \AgdaArgument{n} values look exactly like natural numbers, except for their type and the `f's in the constructor names.

We can put this type family to use alongside a type of lists of known length, known as \emph{vectors}.

\begin{code}
open import Level using (Level; _⊔_) renaming (zero to lzero; suc to lsuc)

infixr 5 _∷_

data Vec {a : Level} (A : Set a) : ℕ → Set a where
  []   :                          Vec A zero
  _∷_  : {n : ℕ} → A → Vec A n →  Vec A (suc n)
\end{code}

Several new things are introduced here.
First, we import the \AgdaPostulate{Level} type.
Earlier, I mentioned that \AgdaPrimitiveType{Set} is the type of all \emph{small} types.
In more complex situations than those discussed so far, we encounter larger types, the first example being \AgdaPrimitiveType{Set} itself.
To say that \AgdaPrimitiveType{Set} has type \AgdaPrimitiveType{Set} is known to give rise to Girard's paradox~\cite{Hurkens1995}, an inconsistency comparable to Russell's paradox in set theory.
Instead, we say that \AgdaPrimitiveType{Set} is an abbreviation for \AgdaPrimitiveType{Set} \AgdaPrimitive{lzero}, and for any \AgdaArgument{ℓ} \AgdaSymbol{:} \AgdaDatatype{Level}, the type of \AgdaPrimitiveType{Set} \AgdaArgument{ℓ} is \AgdaPrimitiveType{Set} \AgdaSymbol{(}\AgdaPrimitive{lsuc} \AgdaArgument{ℓ}\AgdaSymbol{)}.
In this case, we take an implicit \AgdaPostulate{Level} parameter so as to be polymorphic over types of all levels.

We can also note the difference between \emph{parameters} \AgdaArgument{a} and \AgdaArgument{A}, appearing before the colon, and the \emph{index} of type \AgdaDatatype{ℕ}, appearing after the colon.
\AgdaArgument{A} being a parameter in this definition of \AgdaDatatype{Vec} means that every mention of \AgdaDatatype{Vec} in the definition must be applied to \AgdaArgument{A} exactly.
In contrast, indices can differ, as seen by the index taking values \AgdaInductiveConstructor{zero}, \AgdaArgument{n}, and \AgdaInductiveConstructor{suc} \AgdaArgument{n} at various points in our definition.
It is an important distinction that parameters are named, and their names are available throughout the definition.
On the other hand, even though indices can be named, they are only available until the \AgdaKeyword{where}.
Parameters are useful because they don't interfere with levels as much as indices do.

Finally, I have introduced the \emph{mixfix operator} \AgdaInductiveConstructor{\_∷\_}.
The underscores signify places for arguments to go when the function is applied.
So, to use \AgdaInductiveConstructor{\_∷\_} on \AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A} and \AgdaArgument{xs} \AgdaSymbol{:} \AgdaDatatype{Vec} \AgdaArgument{A} \AgdaArgument{n}, we would write \AgdaArgument{x} \AgdaInductiveConstructor{∷} \AgdaArgument{xs}.
The line \AgdaKeyword{infixr} \AgdaNumber{5} \AgdaInductiveConstructor{\_∷\_} assigns right-associating precedence 5 to the operator.
Another point about syntax is that identifiers are very free in form, and can contain almost any Unicode character.
It is common to have variables named like \AgdaArgument{a≤b} or \AgdaArgument{x∈[x]} (both without spaces).
It also means that spaces around infix operators are nearly always necessary.

With these types defined, we can move on to producing values with types using these datatypes.
An interesting example is a function that returns the \AgdaArgument{i}th element of a vector.

\begin{code}
index : {a : Level} → {A : Set a} → {n : ℕ} → Fin n → Vec A n → A
index fzero     (x ∷ xs) = x
index (fsuc i)  (x ∷ xs) = index i xs
\end{code}

This defines the function \AgdaFunction{index} recursively on its first argument \AgdaArgument{i}.
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
This means that it never throws an out-of-bounds exception.
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
If we end up dealing with a value of type \AgdaDatatype{⊥}, we know that there is something wrong with our assumptions, and the corresponding branch of our code can never be reached.
However, with a non-terminating program, we can introduce an expression with type \AgdaDatatype{⊥}.

\begin{code}
{-# NON_TERMINATING #-}
spin : ⊥
spin = spin
\end{code}

If we tried to reduce this to a value, we would be stuck in a loop of replacing \AgdaFunction{spin} with \AgdaFunction{spin}, and never reach a normal form value.
For this reason, Agda makes sure that all unannotated functions use only structural recursion and induction, meaning that some argument(s) become strictly smaller at each recursive call.
This is a conservative estimate of terminating programs.
Sometimes, it is too conservative, and we need to do more work to show that our desired function always terminates.
This is the case for the algorithm I implement for this project.

I remarked that \AgdaDatatype{⊥} is the type representing falsity.
More generally, the Curry-Howard correspondence~\cite{howard:tfatnoc} states that we can regard any type as a logical proposition, and any inhabitants of the type as proofs of the proposition.
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
We have already seen the types corresponding to implication and universal quantification -- these are non-dependent functions (\AgdaArgument{A} \AgdaSymbol{→} \AgdaArgument{B}) and dependent functions (\AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}), respectively.
To see why, we compare how the proposition can be proved and used with how the type can be constructed and deconstructed.
To prove a universal quantification $\forall x \in A. B$, where $B$ can mention $x$, we take arbitrary $x \in A$ and prove $B$ for this $x$.
If we have assumed $\forall x \in A. B$, we can put this to use by providing some specific $a \in A$, concluding that $B$ holds when $x$ is replaced by $a$.
In dependent type theory, types take the place of both sets and propositions, so having an element $a$ of set $A$ and a proof $b$ of proposition $B$ are translated to \AgdaArgument{a} being an inhabitant of \AgdaArgument{A} and \AgdaArgument{b} being an inhabitant of \AgdaArgument{B}, respectively.
This means that to produce an inhabitant of \AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B}, we take an arbitrary inhabitant \AgdaArgument{x} of \AgdaArgument{A} as a function argument and return some inhabitant of \AgdaArgument{B} at this value of \AgdaArgument{x}.
To use one of these proofs, we use function application, which, from our proof \AgdaArgument{f} \AgdaSymbol{:} \AgdaSymbol{(}\AgdaArgument{x} \AgdaSymbol{:} \AgdaArgument{A}\AgdaSymbol{)} \AgdaSymbol{→} \AgdaArgument{B} and \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}, gives us an inhabitant of \AgdaArgument{B} at \AgdaArgument{a}.

To prove an implication $A \implies B$, we assume $A$ and then prove $B$.
We can reword this to say that to prove $A \implies B$, we take an arbitrary proof of $A$ and produce a proof of $B$.
This way, it is clearer that, in type theory, implication is a special case of universal quantification, where the proposition \AgdaArgument{B} does not mention the proof of the hypothesis \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A} (though its proof might).

Other logical connectives can be defined as datatypes.

\begin{code}
infixr 1 _⊎_
infixr 2 _×_
infixr 4 _,_

-- `{a b : Level}' is an abbreviation for
-- {a : Level} {b : Level}.
-- a ⊔ b is the maximum of a and b.
data _⊎_ {a b : Level} (A : Set a) (B : Set b) : Set (a ⊔ b) where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B

record Σ {a b : Level} (A : Set a) (B : A → Set b) : Set (a ⊔ b) where
  constructor _,_
  field
    proj₁ : A
    proj₂ : B proj₁

_×_ : {a b : Level} → Set a → Set b → Set (a ⊔ b)
A × B = Σ A (λ _ → B)
\end{code}

This introduces logical \emph{or} (\AgdaDatatype{\_⊎\_}), existential quantification (\AgdaDatatype{Σ}), and logical \emph{and} (\AgdaDatatype{\_×\_}).
\AgdaDatatype{\_⊎\_} is a tagged union type, known as \texttt{Either} in Haskell or \texttt{result} in ML.
To prove a disjunction $A \vee B$, we must either prove $A$ or prove $B$; and when given a proof of $A \vee B$, we can consider the cases of $A$ holding or $B$ holding.
Similarly, to give an inhabitant of \AgdaArgument{A} \AgdaDatatype{⊎} \AgdaArgument{B}, we produce either \AgdaInductiveConstructor{inj₁} \AgdaArgument{a} for \AgdaArgument{a} \AgdaSymbol{:} \AgdaArgument{A}, or \AgdaInductiveConstructor{inj₂} \AgdaArgument{b} for \AgdaArgument{b} \AgdaSymbol{:} \AgdaArgument{B}; and given a value of type \AgdaArgument{A} \AgdaDatatype{⊎} \AgdaArgument{B}, we can use pattern matching to branch based on whether it was introduced by \AgdaInductiveConstructor{inj₁} or \AgdaInductiveConstructor{inj₂}.

\AgdaDatatype{Σ} is a \emph{dependent sum} type.
To prove $\exists x \in A. B$, where $B$ can mention $x$, we give some element $a$ of $A$, and then prove $B$ with each occurrence of $x$ replaced by $a$.
When we assume that $\exists x \in A. B$, we assume that we have some $a \in A$ and that $B$ holds when $x$ is replaced by $a$.
To give an inhabitant of \AgdaDatatype{Σ} \AgdaArgument{A} \AgdaArgument{B}, we must produce an inhabitant \AgdaArgument{a} of \AgdaArgument{A} and an inhabitant \AgdaArgument{b} of \AgdaArgument{B} \AgdaArgument{a}, remembering that \AgdaArgument{B} is a \emph{function} from \AgdaArgument{A} to \AgdaPrimitiveType{Set} \AgdaArgument{b}, arranging these in the expression \AgdaArgument{a} \AgdaInductiveConstructor{,} \AgdaArgument{b}.
Similarly, when taking an inhabitant of \AgdaDatatype{Σ} \AgdaArgument{A} \AgdaArgument{B}, pattern matching gives us an inhabitant \AgdaArgument{a} of \AgdaArgument{A} and an inhabitant \AgdaArgument{b} of \AgdaArgument{B} \AgdaArgument{a}.
Logical conjunction, \AgdaDatatype{\_×\_}, often known as \emph{pair} or \emph{tuple}, can be defined in terms of \AgdaDatatype{Σ}, where \AgdaArgument{B} is a constant function.
This is much like how implication is the non-dependent version of universal quantification.

The remaining logical connective is \emph{not}.
We use the following definition.

\begin{code}
infix 3 ¬_

¬_ : {a : Level} → Set a → Set a
¬ A = A → ⊥
\end{code}

To prove a negation $\neg A$, we assume $A$ and derive a contradiction.
Producing a proof of $\bot$ is a contradiction, so this is just like proving the implication $A \implies \bot$.

\subsection{Modules}

Agda has a module system similar but distinct to that of ML.
Modules serve dual purpose -- both grouping together related definitions and offering a method of ad-hoc polymorphism.
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

\subsubsection{Modules for polymorphism}

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
Agda's standard library~\cite{stdlib} contains already a definition for \AgdaDatatype{Semiring} in the \AgdaModule{Algebra} file.

\subsection{Algebraic routing problems}

Most shortest distance problems can be described by a semiring and a class of graphs whose weights are elements of the semiring.
The connection is that $\otimes$ represents composition of distances along a path, and $\oplus$ represents the choice of the shortest amongst two distances.
Then, for distances $a$ and $b$, we say that $a \leq b$ iff $a \oplus b = a$ -- that is, out of $a$ and $b$, $a$ is chosen by $\oplus$ as shortest.
In the standard setup for Dijkstra's algorithm, $\mathbb K$ (the set of weights) is $\mathbb N \cup \{ \infty \}$, $\bar 0$ (the least-chosen distance) is $\infty$, $\bar 1$ (the trivial distance) is $0$, $\oplus$ (the choice operator) is $\min$, and $\otimes$ (the composition operator) is $+$.

\begin{table}[b]
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
However, the proof is technical and unintuitive, and we would like to be surer that it is actually correct.

%

\chapter{Implementation}

\section{Semirings}
% Arrangement of modules
% Definition of properties in Semiring.Definitions
% Infinite sums
% EqReasoning used in Semiring.Properties

\section{Graphs}
% Weight matrix representation
% Edge and Path
% \ex-Path-setoid
% shortest-distance

\section{Queues}

\section{Algorithm}
% Translation from the paper
% Inclusion of D and R
% L, I, E
% Internals modules

\section{Application}
% Verification that \bN forms a k-closed semiring
% Extraction

\section{Haskell implementation}
% Classes
% Type-level Nat

%

\chapter{Evaluation}

%

\chapter{Conclusion}

%

\bibliography{../bib.bib}
\bibliographystyle{plain}

\chapter{Project Proposal}

\input{propbody.tex}

\end{document}
