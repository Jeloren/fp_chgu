circle_area(A, B, C, AreaCircle) :-
    P is (A + B + C) / 2,                             % полупериметр
    STriangle is sqrt(P * (P - A) * (P - B) * (P - C)), % площадь треугольника (Герон)
    R is (A * B * C) / (4 * STriangle),                % радиус описанной окружности
    AreaCircle is pi * R * R.                          % площадь окружности
