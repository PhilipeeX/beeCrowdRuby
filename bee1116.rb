=begin
            Dividindo X por Y
    
    Escreva um algoritmo que leia 2 números e imprima o resultado da divisão do primeiro pelo segundo. 
        Caso não for possível mostre a mensagem “divisao impossivel” para os valores em questão.

    Entrada
    A entrada contém um número inteiro N. Este N será a quantidade de pares de valores inteiros (X e Y) que 
    serão lidos em seguida.

    Saída
    Para cada caso mostre o resultado da divisão com um dígito após o ponto decimal, ou “divisao impossivel” 
    caso não seja possível efetuar o cálculo.

    Obs.: Cuide que a divisão entre dois inteiros em algumas linguagens como o C e C++ gera outro inteiro. Utilize cast :)
=end

casos_de_teste = gets.chomp.to_i
i = 0
while i < casos_de_teste do 
    valores = gets.chomp.split(' ')
    x = valores[0].to_f
    y = valores[1].to_f
    if y == 0
        puts "divisao impossivel"
    else
        puts "#{x / y}"
    end
    i += 1
end 