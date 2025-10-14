head(X,[X|_]).

new_head(X,List,[X|List]).

member(X,[X|_]).
member(X,[_|Tail]):-member(X,Tail).


conc([],L,L).
conc([H1|T1],T2,[H1|T3]):-conc(T1,T2,T3).

add(X,L,[X|L]).

away(X,[X|T],T).
away(X,[Y|T],[Y|T1]):-away(X,T,T1).
