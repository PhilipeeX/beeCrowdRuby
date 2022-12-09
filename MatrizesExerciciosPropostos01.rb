=begin
        Ler dois números M e N, e depois ler uma matriz M x N de números inteiros, conforme exemplo. Em seguida, mostrar
    na tela somente os números negativos da matriz.
    
    Entrada:
    A entrada contém os números M e N na mesma linha, depois os dados da matriz.
    
    Saída:
    A saída contém uma mensagem e depois os números negativos da matriz, conforme exemplo.
    Exemplo:

    Entrada                 Saída
    2 3
    12 -8 5
    -13 10 -6
                            VALORES NEGATIVOS:
                            -8
                            -13
                            -6
=end

valores_MN = gets.chomp.split(' ')

m = valores_MN[0].to_i
n = valores_MN[1].to_i
matriz = Array.new(m) { Array.new(n) }

for i in (0...m)
    dados = gets.chomp.split(' ')
    for j in (0...n)
        matriz[i][j] = dados[j].to_i
    end
end

for i in (0...m)
    for j in (0...n)
        if matriz[i][j] < 0
            puts matriz[i][j]
        end
    end
end