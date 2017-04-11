\documentclass{article}

%include polycode.fmt
%\usepackage{sproof}

\begin{document}

\section{Haskell}\label{sec:haskell}

Haskell is a pure functional programming language predating Agda.
It has a syntax similar to that of Agda, though, being a programming language and not a proof assistant, source files usually only use ASCII characters.
Haskell does not have dependent types, and so introduces a syntactic distinction between the value level and the type level, including having separate namespaces for each level.
However, modern Haskell has several features inspired by dependent types, some of which are used in this project.

The code in this section constitutes a valid Haskell file.
The following is the first few lines of the file.

\begin{code}
{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables #-}
module Preparation where

import Prelude hiding (Functor(..), Applicative(..), map, (++), replicate)

import Data.Proxy
import GHC.TypeLits
\end{code}

\subsection{Type classes}

Whereas in Agda, we describe and use algebraic structures using dependent records and parametrised modules, Haskell's \emph{type class} system is dedicated to this purpose.
A type class can be compared to an interface from object-oriented programming, and gives a way to associate certain definitions with ad-hoc classes of types.
Using the example from \hyperref[sec:modules-for-polymorphism]{Section \ref*{sec:modules-for-polymorphism}}, we can define @Functor@ by the following.

\begin{code}
class Functor f where
  map :: (a -> b) -> (f a -> f b)
\end{code}

Note that Haskell uses the double colon in a similar way to Agda's single colon, to ascribe types to names.
Haskell also allows expressions to be annotated with types using the double colon.
In contrast to Agda, in Haskell we do not explicitly quantify over type variables @a@ and @b@; they are assumed to be universally quantified over the given type signature.
This code states that a type-level function (a mapping from inhabitants of @*@, similar to Agda's \AgdaPrimitiveType{Set}, to inhabitants of @*@) @f@ is a @Functor@ if we can produce a function @map@ that polymorphically takes functions of type @a -> b@ to functions of type @f a -> f b@.

We provide such an @f@, we give an instance of the class.
Before that, I will define an alternative @List@ type to the one provided as standard, without the syntactic sugar.

\begin{code}
data List a = Nil | Cons a (List a)
\end{code}

Haskell datatype definitions are similar to ML datatype definitions, with largely inessential differences.
The definition above says that, for all types @a@, @Nil@ is an inhabitant of @List a@, and given @x :: a@ and @xs :: List a@, @Cons x xs@ is an inhabitant of @List a@.

Our @Functor@ instance of @List@ is as follows.

\begin{code}
instance Functor List where
  map f Nil = Nil
  map f (Cons x xs) = Cons (f x) (map f xs)
\end{code}

@map@ on @List@ is a function that takes a function @f@ and applies @f@ to each element of the list, producing a new list with potentially distinct element type.

In using this type class, we notice something different than what we had in Agda.
Firstly, the class definition automatically makes @map@ globally available, so we don't need to open a module to access it.
@map@ is given the type @(Functor f) => (a -> b) -> (f a -> f b)@, where @(Functor f)@ is a \emph{constraint}.
Whenever @map@ is used, the type checker will first infer the values of type variables @a@, @b@, and @f@, and then check that there is a declared instance of @Functor f@ to satisfy the constraint.
In a utility function, like the following, we pass on the class constraint by mentioning it in the type of the function.

\begin{code}
replaceAll :: (Functor f) => b -> f a -> f b
replaceAll x = map (\ _ -> x)
\end{code}

To use the @Functor List@ instance, we can write something similar, noting that @f@ being @List@ is enough to satisfy the @Functor f@ constraint on any utility functions.

\begin{code}
zeroify :: List a -> List Integer
zeroify xs = replaceAll 0 xs
\end{code}

We form hierarchies of type classes by listing prerequisites of new classes.
For example, we can introduce \emph{applicative functors}, which extend functors with some new members.

\begin{code}
class (Functor f) => Applicative f where
  pure  :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b
\end{code}

Instances of classes with prerequisites differ from other instances only in that the prerequisite instances must have been given beforehand.
We need an append function @++@ before we can write the desired instance.

\begin{code}
(++) :: List a -> List a -> List a
Nil         ++ ys = ys
(Cons x xs) ++ ys = Cons x (xs ++ ys)

instance Applicative List where
  pure x = Cons x Nil

  Nil         <*> xs = Nil
  (Cons f fs) <*> xs = map f xs ++ (fs <*> xs)
\end{code}

Note that this is another use of @map@ specialised to @List@.
The instance here says that @pure@ makes a singleton of the element it is given, and @(<*>)@ (pronounced ``ap'') applies each function of the left argument to each element of the right argument.

\subsection{Values in types}

Haskell does not support dependent types like Agda does.
However, modern Haskell has some features that give an approximation of dependent types that we can use to express programs more clearly.
To demonstrate this, I will define a type of lists which carry a natural number at the type level, which is intended to be the length of the list.

To achieve this, I need to enable various language extensions.
The @DataKinds@ extension allows any datatype to be used as a \emph{kind}, a type of types.
Usually, the only kinds in Haskell are @*@, containing all datatypes, and for kinds @k@ and @k'@, we have the kind @k -> k'@, the kind of type-level functions from @k@ to @k'@.
With @DataKinds@, for each type, a corresponding kind is introduced, thus allowing values of the type to be used in place of types.
Together with this is @KindSignatures@, which allows annotation of type variables and type expressions with kinds, just like how normal variables and expressions can be annotated with types.
Finally, we have @ScopedTypeVariables@, which I will explain later.
With these, we can write a type definition.

\begin{code}
data Vec (n :: Nat) a = MkVec (List a)
\end{code}

Unlike with the Agda definition, we note that the length of the list is not checked against the type index by the compiler, as we can pair any @n@ with any list.
If we wanted to enforce the invariant that @n@ is the length of the list, we would do so by hiding the constructor and only exporting functions which maintain the invariant.

This definition already makes use of the first two language extensions.
@Nat@ is a datatype defined in @GHC.TypeLits@, and is lifted up to be a kind using @DataKinds@.
Then, we need @KindSignatures@ to state that @n@ should be a natural number, not a type.

We can give this the same functor instance as @List@ for any particlar @n@.

\begin{code}
instance Functor (Vec n) where
  map f (MkVec xs) = MkVec (map f xs)
\end{code}

However, for the applicative functor instance, we need to do something different.
The applicative functor instance for @List@ has a @pure@ that always returns a list of length 1, and an @(<*>)@ that returns a list whose length is the product of the lengths of the input lists.
Because we have some fixed @n@, we want @pure@ and @(<*>)@ to deal only with vectors of length @n@.
We do this as follows.

\begin{code}
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
\end{code}

There are several specifics in this example.
The class @KnownNat@ comes from @GHC.TypeLits@, and represents the index @n@ being available at run-time.
@natVal@ is a method of this type class, and gives access to the natural number value as a built-in @Integer@.
@KnownNat n@ is a prerequisite of the instance, meaning that @Vec n@ forms an applicative functor whenever we are guaranteed to know @n@ at run-time.

The token @Proxy@ occurs twice in the definition of @pure@: once as a value constructor, to the left of the double-colon; and once as a type constructor, to the right of the double-colon.
Where @a@ is some type-level value, @Proxy a@ is a type with a single inhabitant @Proxy@.
The proxy value here carries the type-level value @n@ into @natVal@, eventually giving us a value-level value.
@n@ is in scope here due to @ScopedTypeVariables@, it being shared throughout the instance definition.

\section{Requirements analysis}\label{sec:requirements-analysis}

\end{document}
