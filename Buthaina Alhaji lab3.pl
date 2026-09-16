female(jory).
female(reem).
female(noof).
female(rana).
male(khaled).
male(ahmed).
male(mohammed).
male(saad).

parent(ahmed,saad).
parent(ahmed,rana).
parent(noof,saad).
parent(noof,rana).
parent(jory,reem).
parent(jory,noof).
parent(jory,mohammed).
parent(khaled,reem).
parent(khaled,noof).
parent(khaled,mohammed).

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

brother(X, Y) :-
    parent(P, X),
    parent(P, Y),
    male(X),
    X \= Y.

sister(X, Y) :-
    parent(P, X),
    parent(P, Y),
    female(X),
    X \= Y.

