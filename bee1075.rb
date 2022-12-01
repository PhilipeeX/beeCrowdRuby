=begin
        RESTO 2
    
    Leia um valor inteiro N. Apresente todos os números entre 1 e 10000 que divididos por N dão resto igual a 2.

    Entrada
    A entrada contém um valor inteiro N (N < 10000).

    Saída
    Imprima todos valores que quando divididos por N dão resto = 2, um por linha.
=end

divisor = gets.chomp.to_i
i = 1
for i in 1..10000 do
    if i % divisor == 2
        puts "#{i}"
    end
    i += 1
end