\chapter{Implementation}

The majority of the work of this project has gone into the Agda implementation of Mohri's algorithm.
There is very little in the way of existing libraries to use, and the Agda implementation aims to be correct.
In contrast, the Haskell implementation can be applied to problems that will cause the algorithm to not terminate (those situations where the semiring is not $k$-closed on the graph, for example).
The division of work is reflected in the extent to which each implementation is documented in this chapter.

For the Agda implementation, the work reflects the structure of Mohri's paper~\cite{Mohri02}.
I start by formalising the required semiring theory from section 1.
Then, I rigorously define the notions mentioned in section 2, such as (weighted) graphs, paths, and shortest distance.
I give a formalisation of queues, whose properties were never explicitly stated in the original paper.
With this preparation done, I 

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

\section{Test data generation}
