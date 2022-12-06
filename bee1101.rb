=begin  
            SEQUENCIA DE NUMEROS E SOMA

    Leia um conjunto não determinado de pares de valores M e N (parar quando algum dos valores for menor ou igual a zero).
    Para cada par lido, mostre a sequência do menor até o maior e a soma dos inteiros consecutivos entre eles (incluindo 
    o N e M).

    Entrada
    O arquivo de entrada contém um número não determinado de valores M e N. A última linha de entrada vai conter um número nulo ou negativo.

    Saída
    Para cada dupla de valores, imprima a sequência do menor até o maior e a soma deles, conforme exemplo abaixo.
=end

valores_de_entrada = gets.chomp.split(' ')
x = valores_de_entrada[0].to_i
y = valores_de_entrada[1].to_i

until x == 0 || x < 0 || y == 0 || y < 0 do
    if x > y 
        maior = x 
        menor = y 
    elsif x < y 
        maior = y 
        menor = x 
    end
    soma = 0
    while menor <= maior
        soma += menor
        print "#{menor} "
        menor += 1 
    end
    puts "sum=#{soma}"
    valores_de_entrada = gets.chomp.split(' ')
    x = valores_de_entrada[0].to_i
    y = valores_de_entrada[1].to_i
end
puts "\n"