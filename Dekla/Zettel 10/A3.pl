nat(0).
nat(s(X)) :- nat(X).
add(0,X,X) :- nat(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).


without([],X,[]).
without([X|Xs],X,Result) :- without(Xs,X,Result).
without([X|Xs],Y,[X|Result]) :- without(Xs,Y,Result).


sum([],0).
sum([X|Xs], Sum) :- sum(Xs,Kevins), add(Kevins,X,Sum).
