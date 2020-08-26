# Lista de Exercicio 1


# Exercicio 1 (2 ** 3)
ex1 = pow (2,3)
# print ("Exercicio 1=", ex1)


# Exercicio 2 (-2 ** 3)
ex2 = pow (-2,3)
# print ("Exercicio 2=", ex2)


# Exercicio 3 (1 ** 0)
ex3 = pow (1,0)
# print ("Exercicio 3=", ex3)


# Exercicio 4 (-1 ** 0)
ex4 = pow (-1,0)
# print ("Exercicio 4=", ex4)


# Exercicio 5 (2 ** 0)
ex5 = pow (2,0)
# print ("Exercicio 5=", ex5)


# Exercicio 6 ((2/5) ** 3)
ex6 = pow ((2/5),3)
# print ("Exercicio 6=", ex6)


# Exercicio 7 (3 ** -2)
ex7 = pow (3,-(2))
# print ("Exercicio 7=", ex7)


# Exercicio 8 ((1/2) ** -3)
ex8 = pow ((1/2),-3)
# print ("Exercicio 8=", ex8)


# Exercicio 9 (((-1) ** 3) ** 4)
a9 = pow ((-1), 3)
ex9 = pow (a9,4)
# print ("Exercicio 9=", ex9)


# Exercicio 10 (0.5 ** 3)
ex10 = pow (0.5,3)
# print ("Exercicio 10=", ex10)


# Exercicio 11 (0.25 ** 4)
ex11 = pow (0.25,4)
# print ("Exercicio 11=", ex11)


# Exercicio 12 (0 ** 4)
ex12 = pow (0,4)
# print ("Exercicio 12=", ex12)


# Exercicio 13 (1 +((0.41) ** 2))
a13 = pow (0.41,2)
ex13 = 1 + a13
# print ("Exercicio 13=", ex13)


# Exercicio 14 ((1/4) + (5 ** 2) - (2 ** -4))
a14 = pow (5,2)
b14 = pow (-2,-4)
ex14 = (1/4) + a14 - b14
# print ("Exercicio 14=", ex14)


# Exercicio 15 ((2 ** -3) + (-4 ** -5))
a15 = pow (2,-3)
b15 = pow (-4,-5)
ex15 = a15 + b15
# print ("Exercicio 15=", ex15)


# Exercicio 16 ((((4/5) - (1/2) + 1) ** -2) + (1/1 + (3 ** 2) - (4 - 5) ** -2))
a16 = (4/5) - (1/2) + 1
b16 = pow (a16,-2)
c16 = 4 - 5
d16 = pow (c16,-2)
e16 = pow (3,2)
f16 = 1 + e16 - d16
g16 = 1 / f16
ex16 = b16 + g16
# print ("Exercicio 16=", ex16)


n = 1
for resposta in [ex1,ex2,ex3,ex4,ex5,ex6,ex7,ex8,ex9,ex10,ex11,ex12,ex13,ex14,ex15,ex16]:
    print("Exercicio",n ,"=",resposta)
    n = n +1


    