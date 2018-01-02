%! 1 and 3
child(3,1).
child(4,1).
child(3,2).
child(4,2).

%! 5 and 6
child(7,5).
child(8,5).
child(7,6).
child(8,6).

%! 2 and 5
child(9,2).
child(9,5).

%! define gender
male(1).
male(3).
male(5).
male(7).
%!male(9).


parent(X,Y):-child(Y,X).
married(X,Y):-child(Z,X),child(Z,Y).
sister(X,Y):-child(X,Z),child(Y,Z),not(male(X)).
halfbrother(X,Y) :- parent(Z,X),parent(Z,Y),parent(N,X),not(parent(N,Y)),male(X).