plays(tennis, anja).
plays(golf, bernd).
plays(tennis, bernd).
plays(pool, claudia).
plays(tennis, claudia).
plays(golf, elke).
plays(tennis, frank).
plays(pool, frank).

'has time'(mon, anja).
'has time'(tue, anja).
'has time'(tue, bernd).
'has time'(thur, claudia).
'has time'(wed, daniel).
'has time'(fri, elke).
'has time'(sat, elke).
'has time'(thur, frank).

'has time fri and sat'(X) :- 'has time'(fri,X), 'has time'(sat,X).

'can play'(X,Y) :- plays(Z,X), plays(Z,Y), 'has time'(K,X), 'has time'(K,Y).