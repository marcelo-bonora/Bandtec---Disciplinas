# Lista de Exercicios 2

# 1) Utilizando divisão e potenciação
# Cálculo de IMC sem detecção de faixa
# Faça o laboratório usando a IDLE, você deve salvar e executar para verificar os resultados,
# faça em dupla, passando para o seu colega os seus dados e conformar os resultados. 

peso = float(input('Quanto você pesa em Kg?(kg)'))
altura = float(input('Quanto você mede altura? (m)'))
IMC = peso/(altura**2)
print('O seu IMC é de {:.1f}'.format(IMC))