majority(A, B, C, Z) :-
    Z is (A * B + A * C + B * C) > 0.