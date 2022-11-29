=begin
        CÉDULAS
    Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis (cédulas) 
    no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2 e 1.
     A seguir mostre o valor lido e a relação de notas necessárias.

    Entrada
    O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

    Saída
    Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada tipo necessárias, 
    conforme o exemplo fornecido. Não esqueça de imprimir o fim de linha após cada linha, caso contrário seu 
    programa apresentará a mensagem: “Presentation Error”.
=end

valor_inteiro = gets.to_i

notas_de_100 = valor_inteiro / 100
notas_de_50 = valor_inteiro % 100 / 50
notas_de_20 = valor_inteiro % 100 % 50 / 20
notas_de_10 = valor_inteiro % 100 % 50 % 20 / 10
notas_de_05 = valor_inteiro % 100 % 50 % 20 % 10 / 5
notas_de_02 = valor_inteiro % 100 % 50 % 20 % 10 % 5 / 2
notas_de_01 = valor_inteiro % 100 % 50 % 20 % 10 % 5 % 2

puts valor_inteiro
puts "#{notas_de_100} nota(s) de R$ 100,00"
puts "#{notas_de_50} nota(s) de R$ 50,00"
puts "#{notas_de_20} nota(s) de R$ 20,00"
puts "#{notas_de_10} nota(s) de R$ 10,00"
puts "#{notas_de_05} nota(s) de R$ 5,00"
puts "#{notas_de_02} nota(s) de R$ 2,00"
puts "#{notas_de_01} nota(s) de R$ 1,00"