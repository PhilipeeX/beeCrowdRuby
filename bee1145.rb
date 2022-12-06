=begin
            SEQUENCIA LOGICA 2

    Escreva um programa que leia dois valores X e Y. A seguir, mostre uma sequência de 1 até Y, 
    passando para a próxima linha a cada X números.

    Entrada
    O arquivo de entrada contém dois valores inteiros, (1 < X < 20) e (X < Y < 100000).

    Saída
    Cada sequência deve ser impressa em uma linha apenas, com 1 espaço em branco entre cada número, 
    conforme exemplo abaixo. Não deve haver espaço em branco após o último valor da linha.
=end

valores = gets.chomp.split(' ')
x = valores[0].to_i
y = valores[1].to_i
i = 1

while i <= y do
    until i == 3 || i % 3 == 0 do 
        print "#{i} "
        i += 1
    end
    puts "#{i}"
    i += 1
end 