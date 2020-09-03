Python 3.8.5 (tags/v3.8.5:580fbb0, Jul 20 2020, 15:43:08) [MSC v.1926 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> #Treinamento de Igualdade e Diferença
>>> maquina1 = {'Teclado', 'Mouse', 'HDMI', 'Monitor', 'Pen-Drive'}
>>> maquina2 = {'Headphone', 'Monitor', 'Arduino', 'WebCan', 'Teclado', 'Mouse'}
>>> maquina3 = {'Teclado', 'Mouse', 'HDMI', 'Monitor', 'Pen-Drive'}
>>> maquina4 = {'VGA', 'Monitor', 'Arduino', 'Cooler de Mesa', 'Teclado', 'Mouse'}
>>> 
>>> #Igualdade
>>> Igualdade = maquina1 == maquina3
>>> print ('maquina1 consome a mesma quantidade de energia que maquina3?', Igualdade)
maquina1 consome a mesma quantidade de energia que maquina3? True
>>> 
>>> Igualdade2 = maquina3 != maquina4
>>> print('maquina3 consome uma quantidade menor de energia do que a maquina4?', Igualdade2)
maquina3 consome uma quantidade menor de energia do que a maquina4? True
>>> 
>>> 
>>> #Diferença Siétrica
>>> Igualdade3 = maquina2 ^ maquina3
>>> print('Quais perifericos não são comuns em ambas as maquinas', Igualdade3)
Quais perifericos não são comuns em ambas as maquinas {'WebCan', 'Pen-Drive', 'Headphone', 'Arduino', 'HDMI'}
>>> 