=begin
        PAR OU IMPAR
    Leia um valor inteiro N. Este valor será a quantidade de valores que serão lidos em seguida. 
    Para cada valor lido, mostre uma mensagem em inglês dizendo se este valor lido é par (EVEN), 
    ímpar (ODD), positivo (POSITIVE) ou negativo (NEGATIVE). No caso do valor ser igual a zero (0), 
        embora a descrição correta seja (EVEN NULL), pois por definição zero é par, seu programa deverá
         imprimir apenas NULL.

    Entrada
    A primeira linha da entrada contém um valor inteiro N(N < 10000) que indica o número de casos de teste. 
    Cada caso de teste a seguir é um valor inteiro X (-107 < X <107).

    Saída
    Para cada caso, imprima uma mensagem correspondente, de acordo com o exemplo abaixo. Todas as letras 
    deverão ser maiúsculas e sempre deverá haver um espaço entre duas palavras impressas na mesma linha.
=end

quantidade = gets.chomp.to_i
valores = Array.new()
while valores.size < quantidade do
    valores.push(gets.chomp.to_i)
end

for i in valores do
    if i == 0
        puts "NULL\n"
    elsif i % 2 == 0
        print "EVEN "
    elsif i % 2 != 0
        print "ODD "
    end
    if i > 0
        print "POSITIVE\n"
    elsif i < 0
        print "NEGATIVE\n"
    end
end