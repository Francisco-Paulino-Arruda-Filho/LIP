def verificar_palindromo(n, w):
    return 'sim' if any(list(map(lambda x: x == x[::-1], get_substrings(w, n)))) else 'nao'


def get_substrings(w, n):
    if len(w) < n:
        return []
    else:
        return list(map(lambda x: w[x:x+n], range(len(w)-n+1)))


n = int(input())
w = input()

resultado = verificar_palindromo(n, w)
print(resultado)
