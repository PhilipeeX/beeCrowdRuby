=begin
        SEQUENCIA IJ 2

    Você deve fazer um programa que apresente a sequencia conforme o exemplo abaixo.

    Entrada
    Não há nenhuma entrada neste problema.

    Saída
    Imprima a sequencia conforme exemplo abaixo

    I=1 J=7
    I=1 J=6
    I=1 J=5
    I=3 J=7
    I=3 J=6
    I=3 J=5
    ...
    I=9 J=7
    I=9 J=6
    I=9 J=5
=end

i = 1
j = 7

while i <= 9
while j >= 5
    puts "I=#{i} J=#{j}"
    j -= 1
end
j = 7
i += 2
end