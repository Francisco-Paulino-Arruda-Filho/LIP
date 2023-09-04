def is_prime(n, divisor=2):
    if n < 2:
        return False
    if divisor * divisor > n:
        return True
    if n % divisor == 0:
        return False
    return is_prime(n, divisor + 1)

def print_primes(lista):
    lista_primos = list(filter(is_prime, lista))
    print(*lista_primos, sep=" ")

entrada_a = input().split()
entrada_a = list(map(int, entrada_a))  # Converte para inteiros usando map()
print_primes(entrada_a)
