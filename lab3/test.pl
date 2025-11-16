% --- Префиксные операторы ---
:- op(200, fx, not).
:- op(300, fy, minus).

% --- Инфиксные операторы ---
:- op(500, xfy, implies).
:- op(600, yfx, plus).

% --- Постфиксные операторы ---
:- op(700, xf, bang).
:- op(800, yf, inc).


% --- Инфиксные факты ---
ivan parent peter.
peter parent maria.

% --- Правило с инфиксным оператором implies ---
happy(X) :- X parent _ implies X plus 1.

% --- Префиксные примеры ---
example1 :- not человек(ivan).
example2 :- minus minus 5.

% --- Постфиксные примеры ---
example3 :- peter bang.
example4 :- 10 inc inc.


demo :-
    write('--- Префиксные ---'), nl,
    write_canonical(not человек(ivan)), nl,
    write_canonical(minus minus 5), nl,
    
    write('--- Инфиксные ---'), nl,
    write_canonical(ivan parent peter), nl,
    write_canonical(A implies B implies C), nl,
    write_canonical(2 plus 3 plus 4), nl,
    
    write('--- Постфиксные ---'), nl,
    write_canonical(peter bang), nl,
    write_canonical(10 inc inc), nl.

:- op(500, xfx, parent).


