parent(sergey, yaroslav).
parent(marina, yaroslav).
parent(sergey, yana).
parent(marina, yana).

married(sergey, marina).

man(sergey).
man(yaroslav).

woman(marina).
woman(yana).


father(F, C) :- man(F), parent(F, C).

mother(M, C) :- woman(M), parent(M, C).

son(S, P) :- man(S), parent(P, S).

daughter(D, P) :- woman(D), parent(P, D).

parent_of(P, C) :- parent(P, C).

spouse(X, Y) :- married(X, Y).
spouse(X, Y) :- married(Y, X).

sister(S, X) :- woman(S), parent(P, S), parent(P, X), S \= X.

brother(B, X) :- man(B), parent(P, B), parent(P, X), B \= X.
