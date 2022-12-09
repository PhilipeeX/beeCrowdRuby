=begin
         Ler um número N e depois uma matriz quadrada N x N com números inteiros. Depois, mostrar na tela a soma dos
    elementos de cada linha da matriz.
    
    Entrada:
    A entrada contém o número N, depois os dados da matriz.
    
    Saída:
    A saída contém os números representando a soma dos elementos de cada linha da matriz.
    
    Exemplo:
    Entrada                             Saída
    3
    5 2 4
    10 3 6
    9 8 12
                                        11
                                        19
                                        29
=end

matriz_quadrada = gets.chomp.to_i

matriz = Array.new(matriz_quadrada) { Array.new(matriz_quadrada) }

for i in (0...matriz_quadrada)
    dados = gets.chomp.split(' ')
    for j in (0...matriz_quadrada)
        matriz[i][j] = dados[j].to_i
    end
end

for i in (0...matriz_quadrada)
    soma = 0
    for j in (0...matriz_quadrada)
        soma += matriz[i][j]
    end
    puts soma
end