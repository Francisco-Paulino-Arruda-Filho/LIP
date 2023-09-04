entrada_lista = input().split()
p = int(input())
q = int(input())

resultado = list(map(lambda num: (num + q) if (num == p) else num, map(int, entrada_lista)))
print(' '.join(map(str, resultado)))
