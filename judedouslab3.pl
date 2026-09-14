male(ali).
male(bader).
male(husain).
male(abdulaziz).
female(shrouq).
female(jude).
female(fatten).
parent(ali, bader).
parent(ali, husain).
parent(bader, jude).
parent(bader, abdulaziz).
parent(shrouq, jude) .
parent(shrouq, abdulaziz).
parent(husain, fatten).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X,Y) :-
    female(X),
    parent(X,Y) .

brother(X,Y) :-
    male(X),
    parent(P,X),
    parent(P,Y),
X \= Y.

sister(X,Y) :-
    female(X),
    parent(P,X),
    parent(P,Y),
X \= Y.
