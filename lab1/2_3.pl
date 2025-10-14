
or_(0, 0, 0).
or_(0, 1, 1).
or_(1, 0, 1).
or_(1, 1, 1).

not_(0, 1).
not_(1, 0).

and_(0, 0, 0).
and_(0, 1, 0).
and_(1, 0, 0).
and_(1, 1, 1).

majority(A, B, C, Result) :- 
    and_(A, B, R1), and_(A, C, R2), and_(B, C, R3),
    or_(R1,R2,Rtemp), or_(R3, Rtemp, Result).
