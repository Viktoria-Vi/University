nat(0).
nat(s(X)) :- nat(X).
add(0,X,X) :- nat(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

greater_than_equal(0,0).
greater_than_equal(X,0).
greater_than_equal(s(X),s(Y)) :- greater_than_equal(X,Y).

mult(0,Y,Z).
mult(s(X),Y,Z) :- mult(X,Y,K), add(Y,K,Z).

fib(0,0).
fib(s(0),s(0)).
fib(s(s(N)), F) :- fib(s(N),F1), fib(N,F2), add(F1,F2,F).

