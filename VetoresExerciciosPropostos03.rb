=begin
        Faça um programa para ler dois vetores A e B, contendo N elementos cada. Em seguida, gere um terceiro vetor C onde
        cada elemento de C é a soma dos elementos correspondentes de A e B. Imprima o vetor C gerado.

        Exemplo:
        Entrada                         Saída
        6
        8 2 11 14 13 20
        5 10 3 1 10 7
                                        13 12 14 15 23 27
=end

quantidade_elementos = gets.chomp.to_i
vetorA, vetorB = Array.new(quantidade_elementos), Array.new(quantidade_elementos)

vetor_temp = gets.chomp.split(' ')
i = 0
while i < vetor_temp.size do
    vetorA[i] = vetor_temp[i].to_i
    i += 1
end
vetor_temp = gets.chomp.split(' ')
i = 0
while i < vetor_temp.size do
    vetorB[i] = vetor_temp[i].to_i
    i += 1
end
vetorC = Array.new(quantidade_elementos)
i = 0
while i < vetorC.size do
    vetorC[i] = vetorA[i] + vetorB[i]
    i += 1
end

p vetorC