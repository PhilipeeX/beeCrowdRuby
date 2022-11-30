=begin
            INTERVALO
    Você deve fazer um programa que leia um valor qualquer e apresente uma mensagem dizendo em qual dos 
    seguintes intervalos ([0,25], (25,50], (50,75], (75,100]) este valor se encontra. Obviamente se o valor 
    não estiver em nenhum destes intervalos, deverá ser impressa a mensagem “Fora de intervalo”.

    O símbolo ( representa "maior que". Por exemplo:
    [0,25]  indica valores entre 0 e 25.0000, inclusive eles.
    (25,50] indica valores maiores que 25 Ex: 25.00001 até o valor 50.0000000

    Entrada
    O arquivo de entrada contém um número com ponto flutuante qualquer.
    ex: 25.01

    Saída
    A saída deve ser uma mensagem conforme exemplo abaixo.
=end

entrada = gets.chomp.to_f
if entrada >= 0 && entrada <= 25.0000
    puts "Intervalo [0,25]"
elsif entrada > 25.0000 && entrada <= 50.0000000
    puts "Intervalo (25,50]"
elsif entrada > 50.0000000 && entrada <= 75.0000000
    puts "Intervalo (50,75]"
elsif entrada > 75.0000000 && entrada <= 100.0000000
    puts "Intervalo (75,100]"
else 
    puts "Fora de intervalo"
end