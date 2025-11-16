% Динамическая база автомобилей
:- dynamic(car/5).

% car(Marka, Color, RegNumber, Status, OnRoute)
% Status = active | maintenance | repair
% OnRoute = yes | no

% --- Пример начальной базы ---
car(lada, red, "A123BC21", active, no).
car(toyota, black, "B456DE21", active, no).
car(kia, white, "C789FG21", active, no).

% -----------------------------
% Добавить новый автомобиль в парк
add_car(Marka, Color, RegNumber) :-
    asserta(car(Marka, Color, RegNumber, active, no)),
    write('Добавлен автомобиль: '), write(Marka), write(' '), write(RegNumber), nl.

% -----------------------------
% Выпустить автомобиль на маршрут
send_on_route(RegNumber) :-
    retract(car(M, C, RegNumber, Status, no)),
    Status = active,
    asserta(car(M, C, RegNumber, Status, yes)),
    write('Автомобиль '), write(RegNumber), write(' выпущен на маршрут'), nl.

% -----------------------------
% Снять автомобиль с маршрута
remove_from_route(RegNumber) :-
    retract(car(M, C, RegNumber, Status, yes)),
    Status = active,
    asserta(car(M, C, RegNumber, Status, no)),
    write('Автомобиль '), write(RegNumber), write(' снят с маршрута'), nl.

% -----------------------------
% Отправить на техобслуживание
send_to_maintenance(RegNumber) :-
    retract(car(M, C, RegNumber, _, OnRoute)),
    asserta(car(M, C, RegNumber, maintenance, no)),
    write('Автомобиль '), write(RegNumber), write(' отправлен на техобслуживание'), nl.

% -----------------------------
% Отправить на ремонт
send_to_repair(RegNumber) :-
    retract(car(M, C, RegNumber, _, OnRoute)),
    asserta(car(M, C, RegNumber, repair, no)),
    write('Автомобиль '), write(RegNumber), write(' отправлен на ремонт'), nl.

% -----------------------------
% Показать все машины
show_cars :-
    forall(car(M, C, R, Status, OnRoute),
           (write(M), write(' '),
            write(C), write(' '),
            write(R), write(' '),
            write(Status), write(' '),
            write(OnRoute), nl)).
