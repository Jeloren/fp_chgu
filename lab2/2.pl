% отбросить первые K элементов
drop(0, L, L).                       % если 0 — ничего не убираем
drop(_, [], []).                     % если список пуст
drop(K, [_|T], R) :-                 
    K > 0,
    K1 is K - 1,
    drop(K1, T, R).

% взять первые K элементов
take(0, _, []).                      % если 0 — ничего не берём
take(_, [], []).                     % если список пуст
take(K, [H|T], [H|R]) :-             
    K > 0,
    K1 is K - 1,
    take(K1, T, R).

% sublist(List, M, N, Sub)
sublist(List, M, N, Sub) :-
    M1 is M - 1,
    drop(M1, List, Rest),            % отбросить (M-1) элементов
    Len is N - M + 1,
    take(Len, Rest, Sub).            % взять нужное количество
