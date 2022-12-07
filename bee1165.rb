=begin
            NÚMERO PRIMO

    Na matemática, um Número Primo é aquele que pode ser dividido somente por 1 (um) e por ele mesmo. 
    Por exemplo, o número 7 é primo, pois pode ser dividido apenas pelo número 1 e pelo número 7.

    Entrada
    A entrada contém vários casos de teste. A primeira linha da entrada contém um inteiro N (1 ≤ N ≤ 100),
    indicando o número de casos de teste da entrada. Cada uma das N linhas seguintes contém um valor 
    inteiro X (1 < X ≤ 107), que pode ser ou não, um número primo.

    Saída
    Para cada caso de teste de entrada, imprima a mensagem “X eh primo” ou “X nao eh primo”, de acordo
    com a especificação fornecida.
=end

casos_de_teste = gets.chomp.to_i
i = 1

while i <= casos_de_teste do 
    valor = gets.chomp.to_i
    j = 2
    while j <= valor do
        if valor % j == 0
            if valor == j
                puts "#{valor} eh primo"
                break
            end
            puts "#{valor} nao eh primo"
            break
        end
        j +=1 
    end
    i += 1
end