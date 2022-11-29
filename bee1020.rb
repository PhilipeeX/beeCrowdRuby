=begin
        IDADE EM DIAS
    Leia um valor inteiro correspondente à idade de uma pessoa em dias e informe-a em anos, meses e dias

    Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias e todo mês com 30 dias.
     Nos casos de teste nunca haverá uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. 
     Este é apenas um exercício com objetivo de testar raciocínio matemático simples.

    Entrada
    O arquivo de entrada contém um valor inteiro.

    Saída
    Imprima a saída conforme exemplo fornecido.
=end

idade_em_dias = gets.to_i

ano = idade_em_dias / 365
meses = idade_em_dias % 365 / 30
dias = idade_em_dias % 365 % 30

puts "#{ano} ano(s)"
puts "#{meses} mes(es)"
puts "#{dias} dia(s)"