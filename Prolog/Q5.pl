% Fatos
homem(roberto).
homem(paulino).
homem(felipe).
homem(robson).
homem(gabriel).
homem(lucas).
homem(jose).
homem(renan).
homem(marcelo).
homem(marcio).
homem(fernando).

mulher(aurora).
mulher(maria).
mulher(joana).
mulher(ana).
mulher(manuela).
mulher(mariana).
mulher(gabriella).
mulher(jenifer).
mulher(chiara).

genitor(roberto, alberto).
genitor(aurora, alberto).
genitor(ana, manuela).
genitor(ana, mariana).
genitor(roberto, paulino).
genitor(maria, paulino).
genitor(roberto, felipe).
genitor(maria, felipe).
genitor(paulino, chiara).
genitor(paulino, jenifer).
genitor(mariana, chiara).
genitor(mariana, jenifer).
genitor(paulino, fernando).
genitor(mariana, fernando).
genitor(roberto, jose).
genitor(maria, jose).
genitor(robson, renan).
genitor(manuela,renan).
genitor(robson, aurora).
genitor(manuela,aurora).
genitor(marcelo, mariana).
genitor(felipe, gabriella).
genitor(aurora, gabriella).
genitor(chiara, fernando).

mae(X,Y):-mulher(X),genitor(X,Y).
pai(X, Y):-homem(X),genitor(X, Y).
filho(X,Y):-homem(X), (mae(Y, X); pai(Y, X)).
filha(X,Y):-mulher(X),(mae(Y,X);pai(Y, X)).
irma(X, Y):-mulher(X),(mae(Z,Y),mae(Z,X));(pai(Z,X),pai(Z,Y)).
irmao(X, Y):-homem(X),(mae(Z,Y),mae(Z,X));(pai(Z,X),pai(Z,Y)).
tio(X, Y):-homem(X),(irmao(X,Z);irma(X, Z), genitor(Z,Y)).
tia(X, Y):-mulher(X),(irmao(X, Z); irma(X, Z), genitor(Z,Y)).
primo(X,Y):-homem(X),(tio(Z, X); tia(Z, X),genitor(Z, Y);(tio(X, Z); tia(Z, X),genitor(Y, Z)).
prima(X,Y):-mulher(X),(tio(Z, X); tia(Z, X),genitor(Z, Y);(tio(X, Z); tia(Z, X),genitor(Y, Z)).
avo_homem(X, Y):-homem(X),(genitor(X, Z), genitor(Z, Y)).
avo_mulher(X, Y):-mulher(X),(genitor(X, Z), genitor(Z, Y)).
descendente(X, Y):-genitor(Y, X).
descendente(X, Y):-genitor(Y, W),descendente(X, W).


