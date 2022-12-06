=begin
        Soma de Ímpares Consecutivos II

    Leia um valor inteiro N que é a quantidade de casos de teste que vem a
     seguir. Cada caso de teste consiste de dois inteiros X e Y. Você deve
      apresentar a soma de todos os ímpares existentes entre X e Y.

    Entrada
    A primeira linha de entrada é um inteiro N que é a quantidade de 
    casos de teste que vem a seguir. Cada caso de teste consiste em 
    uma linha contendo dois inteiros X e Y.

    Saída
    Imprima a soma de todos valores ímpares entre X e Y.
=end

casos_de_teste = gets.chomp.to_i
i = 0
while i < casos_de_teste do
    valores = gets.chomp.split(' ')
    x = valores[0].to_i
    y = valores[1].to_i
    if x > y 
        maior = x 
        menor = y 
    elsif x < y 
        maior = y 
        menor = x 
    end
    while menor < maior do
        impar = 0
        if menor % 2 != 0
            impar += menor
        end
        menor += 1
    end
    puts "#{impar}"

    i += 1 
end 