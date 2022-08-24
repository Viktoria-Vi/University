'points to'(a, d).
'points to'(d, b).
'points to'(d, e).
'points to'(d, c).
'points to'(c, b).
'points to'(g, f).


path(N1,N2,PATH) :- 'points to'(N1,N2), PATH = [[N1,N2]].
path(N1,N2,PATH) :- 'points to'(N1,X), PATH = [[N1,X],REST], path(X,N2, REST).

    