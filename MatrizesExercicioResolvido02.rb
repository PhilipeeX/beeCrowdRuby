=begin

        Faça um programa para ler dois números inteiros M e N. Em seguida, ler uma matriz de M linhas 
        e N colunas contendo números inteiros. Gerar um vetor de modo que cada elemento do vetor seja 
        a soma dos elementos da linha correspondente da matriz. Mostrar o vetor gerado

        Exemplo
        Entrada:                                    SAIDA
        2 3 
        7 8 10 
        2 3 5
                                                    25
                                                    10
=end

valores_MN = gets.chomp.split(' ')

m = valores_MN[0].to_i
n = valores_MN[1].to_i
matrizA = Array.new(m) { Array.new(n) }

for i in (0...m)
    valores = gets.chomp.split(' ')
    for j in (0...n)
        matrizA[i][j] = valores[j].to_i
    end
end

for i in (0...m)
    soma = 0
    for j in (0...n)
        soma += matrizA[i][j].to_i
    end
    puts soma
end