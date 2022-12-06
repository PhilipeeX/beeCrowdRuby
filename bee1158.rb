=begin
            Soma de Ímpares Consecutivos III

    Leia um valor inteiro N que é a quantidade de casos de teste que vem a seguir. 
    Cada caso de teste consiste de dois inteiros X e Y. Você deve apresentar a soma de Y ímpares
    consecutivos a partir de X inclusive o próprio X se ele for ímpar. Por exemplo:
    para a entrada 4 5, a saída deve ser 45, que é equivalente à: 5 + 7 + 9 + 11 + 13
    para a entrada 7 4, a saída deve ser 40, que é equivalente à: 7 + 9 + 11 + 13

    Entrada
    A primeira linha de entrada é um inteiro N que é a quantidade de casos de teste que vem a seguir. Cada caso de teste consiste em uma linha contendo dois inteiros X e Y.

    Saída
    Imprima a soma dos consecutivos números ímpares a partir do valor X.
=end

casos_de_teste = gets.chomp.to_i
i = 1

while i <= casos_de_teste do
    valores_x_y = gets.chomp.split(' ')
    x = valores_x_y[0].to_i
    y = valores_x_y[1].to_i

    j = 1
    impar = 0
    while j <= y do
        if x % 2 != 0
            impar += x 
            j += 1 
        end
        x += 1
    end
    puts "#{impar}"

    i += 1 
end