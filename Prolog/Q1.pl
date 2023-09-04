primo(2).
primo(3).
primo(N) :-
    integer(N),
    N > 3,
    N mod 2 =\= 0,
    \+ div(N, 3).

div(N, divisor) :-
    N mod divisor =:= 0.
div(N, divisor) :-
    divisor * divisor < N,
    Pr�ximoDivisor is divisor + 2,
    div(N, Pr�ximoDivisor).
primos([]).
primos([H|T]) :-
    primo(H),
    primos(T).


