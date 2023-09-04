elimina_repetidos([], []).
elimina_repetidos([X|Resto], L2) :-
    member(X, Resto),
    !,
    elimina_repetidos(Resto, L2).
elimina_repetidos([X|Resto], [X|L2]) :-
    elimina_repetidos(Resto, L2).
