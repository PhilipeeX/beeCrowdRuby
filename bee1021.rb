=begin
        NOTAS E MOEDAS
    Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário.
     A seguir, calcule o menor número de notas e moedas possíveis no qual o valor pode ser decomposto. 
     As notas consideradas são de 100, 50, 20, 10, 5, 2. As moedas possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01.
      A seguir mostre a relação de notas necessárias.

    Entrada
    O arquivo de entrada contém um valor de ponto flutuante N (0 ≤ N ≤ 1000000.00).

    Saída
    Imprima a quantidade mínima de notas e moedas necessárias para trocar o valor inicial, conforme exemplo fornecido.

    Obs: Utilize ponto (.) para separar a parte decimal.
=end

valor_inteiro = gets.chomp.split('.')

#notas
notas = valor_inteiro[0].to_i
notas_de_100 = notas / 100
notas_de_50 = notas % 100 / 50
notas_de_20 = notas % 100 % 50 / 20
notas_de_10 = notas % 100 % 50 % 20 / 10
notas_de_05 = notas % 100 % 50 % 20 % 10 / 5
notas_de_02 = notas % 100 % 50 % 20 % 10 % 5 / 2

#moedas
moedas = valor_inteiro[1].to_i
moedas_de_01 = notas % 100 % 50 % 20 % 10 % 5 % 2
moedas_de_50 = moedas / 50
moedas_de_25 = moedas % 50 / 25
moedas_de_10 = moedas % 50 % 25 / 10
moedas_de_05 = moedas % 50 % 25 % 10 / 5
moedas_de_001 = moedas % 50 % 25 % 10 % 5



puts "NOTAS:"
puts "#{notas_de_100} nota(s) de R$ 100.00"
puts "#{notas_de_50} nota(s) de R$ 50.00"
puts "#{notas_de_20} nota(s) de R$ 20.00"
puts "#{notas_de_10} nota(s) de R$ 10.00"
puts "#{notas_de_05} nota(s) de R$ 5.00"
puts "#{notas_de_02} nota(s) de R$ 2.00"

puts "MOEDAS:"
puts "#{moedas_de_01} moeda(s) de R$ 1.00"
puts "#{moedas_de_50} moeda(s) de R$ 0.50"
puts "#{moedas_de_25} moeda(s) de R$ 0.25"
puts "#{moedas_de_10} moeda(s) de R$ 0.10"
puts "#{moedas_de_05} moeda(s) de R$ 0.05"
puts "#{moedas_de_001} moeda(s) de R$ 0.01"