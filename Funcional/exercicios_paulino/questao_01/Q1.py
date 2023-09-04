def diferenca_simetrica(lista_a, lista_b):
    set_a = set(lista_a)
    set_b = set(lista_b)
    
    diff_a_b = set_a.difference(set_b)
    diff_b_a = set_b.difference(set_a)
    
    diff_simetrica = diff_a_b.union(diff_b_a)
    
    return list(diff_simetrica)


entrada_a = input().split()
entrada_b = input().split()

resultado = diferenca_simetrica(entrada_a, entrada_b)
print(' '.join(resultado))
