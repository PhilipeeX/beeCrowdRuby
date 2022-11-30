=begin
            COORDENADAS DE UM PONTO
    Leia 2 valores com uma casa decimal (x e y), que devem representar as coordenadas de um ponto em um plano. 
    A seguir, determine qual o quadrante ao qual pertence o ponto, ou se está sobre um dos eixos cartesianos ou na 
    origem (x = y = 0).
    Se o ponto estiver na origem, escreva a mensagem “Origem”.

    Se o ponto estiver sobre um dos eixos escreva “Eixo X” ou “Eixo Y”, conforme for a situação.

    Entrada
    A entrada contem as coordenadas de um ponto.

    Saída
    A saída deve apresentar o quadrante em que o ponto se encontra.
=end

valores = gets.chomp.split(' ')

x = valores[0].to_f
y = valores[1].to_f

if x == 0 && y == 0
    puts "Origem"
elsif x == 0
    puts "Eixo Y"
elsif y == 0
    puts "Eixo X"
elsif x > 0 && y > 0
    puts "Q1"
elsif x < 0 && y > 0
    puts "Q2"
elsif x < 0 && y < 0
    puts "Q3"
elsif x > 0 && y < 0
    puts "Q4"
end
