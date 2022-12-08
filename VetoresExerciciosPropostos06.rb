=begin
    Fazer um programa para ler um conjunto de nomes de pessoas e suas respectivas idades. Depois, mostrar na tela o nome
    da pessoa mais velha.

    Exemplo:
        Entrada                                     Saída
        5                                           Pessoa mais velha: Carlos
        Joao 16
        Maria 21
        Teresa 15
        Carlos 23
        Paulo 17
=end

pessoas = gets.chomp.to_i

i = 0
nomes = []
idades = []
while i < pessoas do 
    dados = gets.chomp.split(' ')
    nomes << dados[0]
    idades << dados[1].to_i
    i += 1
end
maior = 0
oldest_index = 0
idades.each_with_index do | element, index |
   if element > maior
       maior = element
       oldest_index = index
   end
end

puts "Pessoa mais velha: #{nomes[oldest_index]}"