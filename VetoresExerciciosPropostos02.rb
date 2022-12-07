=begin
    Faça um programa que leia N números inteiros e armazene-os em um vetor. Em seguida, mostre na tela:
    - todos os números pares
    - a quantidade de números pares

    Exemplo:
    Entrada                                 Saída
    6
    8 2 11 14 13 20
                                            8 2 14 20
                                            4
=end

vetor = Array.new(gets.chomp.to_i)
vetor2 = gets.chomp.split(' ')
i = 0
while i < vetor.size do
    vetor[i] = vetor2[i].to_i
    i += 1
end
i = 0
pares = 0
while i < vetor.size do
    if vetor[i] % 2 == 0
        print "#{vetor[i]} "
        pares += 1
    end
    i += 1
end
puts "\n"
puts pares