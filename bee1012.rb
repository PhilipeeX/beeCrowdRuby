=begin 
    Escreva um programa que leia três valores com ponto flutuante de dupla precisão: 
    A, B e C. Em seguida, calcule e mostre:

    a) a área do triângulo retângulo que tem A por base e C por altura.
    b) a área do círculo de raio C. (pi = 3.14159)
    c) a área do trapézio que tem A e B por bases e C por altura.
    d) a área do quadrado que tem lado B.
    e) a área do retângulo que tem lados A e B.
    Entrada
    O arquivo de entrada contém três valores com um dígito após o ponto decimal.

    Saída
    O arquivo de saída deverá conter 5 linhas de dados. Cada linha corresponde a uma das áreas descritas acima,
    sempre com mensagem correspondente e um espaço entre os dois pontos e o valor. O valor calculado deve ser apresentado 
    com 3 dígitos após o ponto decimal.

    Exemplos de Entrada
    3.0 4.0 5.2
=end

valor = gets.split(' ')
A = valor[0].to_f
B = valor[1].to_f
C = valor[2].chomp.to_f
PI = 3.14159

triangulo_retangulo = A * C / 2
circulo = PI * C ** 2
trapezio = ((A + B) * C) / 2
quadrado = B * B 
retangulo = A * B   

puts "TRIANGULO: %0.03f" % triangulo_retangulo.round(3)
puts "CIRCULO: %0.03f\n" % circulo.round(3)
puts "TRAPEZIO: %0.03f\n" % trapezio.round(3)
puts "QUADRADO: %0.03f\n" % quadrado.round(3)
puts "RETANGULO: %0.03f\n" % retangulo.round(3)