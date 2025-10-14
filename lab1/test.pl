and(1,1,1).
and(1,0,0).
and(0,1,0).
and(0,0,0).

or(1,1,1).
or(1,0,1).
or(0,1,1).
or(0,0,0).

not(0,1).
not(1,0).

majority(A, B, C, Z) :-
    and(A, B, X1), not(C, Y1), and(X1, Y1, Z1),
    and(B, C, X2), not(A, Y2), and(X2, Y2, Z2),
    and(A, C, X3), not(B, Y3), and(X3, Y3, Z3),
    and(A, B, X4), and(X4, C, Z4),
    or(Z1, Z2, W1), or(Z3, Z4, W2), or(W1, W2, Z).
