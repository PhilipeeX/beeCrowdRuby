=begin
        SOMA DE IMPARES CONSECUTIVOS 1
    Leia 2 valores inteiros X e Y. A seguir, calcule e mostre a soma dos números impares entre eles.

    Entrada
    O arquivo de entrada contém dois valores inteiros.

    Saída
    O programa deve imprimir um valor inteiro. Este valor é a soma dos valores ímpares 
    que estão entre os valores fornecidos na entrada que deverá caber em um inteiro.
=end

x = gets.chomp.to_i
y = gets.chomp.to_i
soma = 0
min = 0
max = 0

if x > y 
    max = x 
    min = y 
else 
    max = y 
    min = x 
end

i = min
while i < max 
    if min % 2 != 0
    soma = soma + min
    end
    min = min + 1
    i += 1
end

puts "#{soma}"