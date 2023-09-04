n_esimo(1, [X|_], X).
n_esimo(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    n_esimo(N1, T, X).
