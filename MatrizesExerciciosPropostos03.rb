=begin
    Ler um inteiro N e uma matriz quadrada de ordem N. Mostrar qual o maior elemento de cada linha. Suponha não haver
    empates.
    
    Entrada:
    A entrada contém o número N, depois os dados da matriz.
    
    Saída:
    A saída contém os números representando o maior elemento de cada linha da matriz.
    
    Exemplo:
    Entrada                         Saída
    4
    10 5 12 3
    4 7 0 6
    3 3 8 1
    15 13 4 7
                                    12
                                    7
                                    8
                                    15
=end

matriz_quadrada = gets.chomp.to_i

matriz = Array.new(matriz_quadrada) { Array.new(matriz_quadrada) }

for i in (0...matriz_quadrada)
    maior = 0
    dados = gets.chomp.split(' ')
    for j in (0...matriz_quadrada)
        matriz[i][j] = dados[j].to_i
        if matriz[i][j] > maior
            maior = matriz[i][j]
        end
    end
    puts maior
end