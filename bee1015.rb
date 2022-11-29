=begin 
Leia os quatro valores correspondentes aos eixos x e y de dois pontos quaisquer no plano, p1(x1,y1) e p2(x2,y2) 
e calcule a distância entre eles, mostrando 4 casas decimais após a vírgula, segundo a fórmula:

Distancia = 

Entrada
O arquivo de entrada contém duas linhas de dados. A primeira linha contém dois valores de ponto flutuante: x1 y1 e a segunda linha contém dois valores de ponto flutuante x2 y2.

Saída
Calcule e imprima o valor da distância segundo a fórmula fornecida, com 4 casas após o ponto decimal.
=end

valor1 = gets.split(' ')
valor2 = gets.split(' ')

x1 = valor1[0].to_f
y1 = valor1[1].to_f
x2 = valor2[0].to_f
y2 = valor2[1].to_f

distancia = Math.sqrt((x2-x1)** 2 + (y2-y1)**2)

puts "%0.04f\n" % distancia.round(4) 

