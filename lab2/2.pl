append([], L, L).
append([H|T], L2, [H|R]) :-
    append(T, L2, R).


% position(SubList, List, Pos) – возвращает позицию первого вхождения подсписка SubList в List.

position(SubList, List, Pos) :-
    append(Prefix, Rest, List),        % делим список на префикс и остаток
    append(SubList, _, Rest),          % проверяем, что Rest начинается с SubList
    length(Prefix, Pos1),              % считаем длину префикса
    Pos is Pos1 + 1, !.                % позиция = длина префикса + 1


% sublist(List, M, N, Sub) – выделяет подсписок из элементов с позиций от M до N.

sublist(List, M, N, Sub) :-
    length(Prefix, M1),
    M1 is M - 1,
    append(Prefix, Rest, List),       % отбрасываем первые (M-1) элементов
    Len is N - M + 1,
    length(Sub, Len),
    append(Sub, _, Rest).             % берём нужное количество элементов
