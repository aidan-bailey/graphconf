#include "prelude.lp".
#include "gates/not.lp".
#include "gates/and.lp".
#include "gates/or.lp".
#include "gates/xor.lp".
#include "gates/twiddle.lp".
#include "generate/assignments.lp".
#include "semantics.lp".

gate(x1).
gate_type(x1, source).

gate(x2).
gate_type(x2, source).

gate(1).
gate_type(1, twiddle_g).

connection(x1, 1, 1, 1).
connection(x2, 1, 1, 2).
connection(1, 1, y1, 1).

gate(y1).
gate_type(y1, destination).

%%%%%%%%%%%%
% OPTIMISE %
%%%%%%%%%%%%

%#show gate_type/2.
%#show val/3.
%#show assign/3.


#show model/2.
#show entails/2.

%#show sourceGates/1.
