tamanho([], 0).
tamanho([_|Resto], X) :-
    tamanho(Resto, XResto),
    X is XResto + 1.
