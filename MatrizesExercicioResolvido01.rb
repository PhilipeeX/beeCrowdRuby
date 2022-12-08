=begin
        Faça um programa para ler um número inteiro N e uma matriz quadrada de ordem N contendo 
        números inteiros. Em seguida, mostrar a diagonal principal e a quantidade de valores negativos da matriz.

        Exemplo:
        Entrada:                            SAIDA
        3
        5 -3 10
        15 8 2
        7 9 -4

                                            DIAGONAL PRINCIPAL:
                                            5 8 -4
                                            QUANTIDADE DE NEGATIVOS = 2
=end

matriz = gets.chomp.to_i
matrizA = Array.new(matriz) { Array.new(matriz) }
for linha in (0...matriz)
   valores = gets.chomp.split(' ')
   for coluna in (0...matriz)
        matrizA[linha][coluna] = valores[coluna].to_i
   end
end
puts "DIAGONAL PRINCIPAL: "
i = 0
negativos = 0
while i < matriz
    j = 0
    while j < matriz
        if matrizA[i][j] < 0 
            negativos += 1
        end
        if j == i 
        print "#{matrizA[i][j]} "
        end
        j += 1
    end
    i += 1
end
puts "\n"
puts "QUANTIDADE DE NEGATIVOS = #{negativos}"