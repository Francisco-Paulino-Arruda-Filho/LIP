def ponto_dentro_retangulo(retangulo, ponto):
    x_esq, y_esq, largura, altura = retangulo
    x_ponto, y_ponto = ponto

    x_dir = x_esq + largura
    y_dir = y_esq + altura

    if x_ponto >= x_esq and x_ponto <= x_dir and y_ponto >= y_esq and y_ponto <= y_dir:
        return 'sim'
    else:
        return 'nao'
    
x_esq, y_esq, largura, altura = map(int, input().split())
x_ponto, y_ponto = map(int, input().split())

print(ponto_dentro_retangulo((x_esq, y_esq, largura, altura), (x_ponto, y_ponto)))


