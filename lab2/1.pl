start_with([], _).
start_with([H|T1], [H|T2]) :- start_with(T1, T2).


pos_sublist(Sub, List, 1) :- start_with(Sub, List).
pos_sublist(Sub, [_|Tail], P) :- pos_sublist(Sub, Tail, P1), 
    P is P1 + 1.