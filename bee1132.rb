=begin
            MULTIPLOS DE 13
    Escreva um algoritmo que leia 2 valores inteiros X e Y calcule a soma dos números que não são
     múltiplos de 13 entre X e Y, incluindo ambos.

    Entrada
    O arquivo de entrada contém 2 valores inteiros quaisquer, não necessariamente em ordem crescente.

    Saída
    Imprima a soma de todos os valores não divisíveis por 13 entre os dois valores lidos na entrada, 
    inclusive ambos se for o caso.
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
soma = 0
while menor <= maior do
    if menor % 13 != 0
        soma += menor
    end
    menor += 1 
end
puts soma