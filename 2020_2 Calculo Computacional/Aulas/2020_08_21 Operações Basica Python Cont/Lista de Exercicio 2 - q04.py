# 4) Agora altere o código no exercício 1, para que o formato do espaço reservado para o
# ponto flutuante esteja com 2 casas decimais, veja como:
# {:.2f}'.format
# O que ocorre com os valores?

peso = float(input('Quanto você pesa em Kg?(kg)'))
altura = float(input('Quanto você mede altura? (m)'))
IMC = peso/(altura**2)
print('O seu IMC é de {:.2f}'.format(IMC))