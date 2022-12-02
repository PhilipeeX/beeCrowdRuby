=begin
        SEQUENCIA IJ 3

        Você deve fazer um programa que apresente a sequencia conforme o exemplo abaixo.

    Entrada
    Não há nenhuma entrada neste problema.

    Saída
    Imprima a sequencia conforme exemplo abaixo.

    I=1 J=7
    I=1 J=6
    I=1 J=5
    I=3 J=9
    I=3 J=8
    I=3 J=7
    ...
    I=9 J=15
    I=9 J=14
    I=9 J=13
=end

i = 1
j = 7

while i <= 9
    aumenta_j = j + 2
    menor_jota = j - 3
while j > menor_jota
    puts "I=#{i} J=#{j}"
    j -= 1
end
j = aumenta_j
i += 2
end