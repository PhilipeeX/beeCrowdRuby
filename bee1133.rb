=begin
            Resto da Divisão

    Escreva um programa que leia 2 valores X e Y e que imprima todos os valores entre eles cujo resto da 
    divisão dele por 5 for igual a 2 ou igual a 3.

    Entrada
    O arquivo de entrada contém 2 valores positivos inteiros quaisquer, não necessariamente em ordem crescente.

    Saída
    Imprima todos os valores conforme exemplo abaixo, sempre em ordem crescente.
=end

x = gets.chomp.to_i
y = gets.chomp.to_i

if x > y
    maior = x 
    menor = y 
else 
    maior = y 
    menor = x 
end

while menor <= maior do
    if menor % 5 == 2 || menor % 5 == 3
        puts menor
    end
    menor += 1 
end