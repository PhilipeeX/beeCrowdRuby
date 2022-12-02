=begin
        EXPERIENCIAS
    
    Maria acabou de iniciar seu curso de graduação na faculdade de medicina e precisa de sua ajuda 
    para organizar os experimentos de um laboratório o qual ela é responsável. Ela quer saber no final do ano,
         quantas cobaias foram utilizadas no laboratório e o percentual de cada tipo de cobaia utilizada.

    Este laboratório em especial utiliza três tipos de cobaias: sapos, ratos e coelhos. Para obter estas informações,
    ela sabe exatamente o número de experimentos que foram realizados, o tipo de cobaia utilizada e a quantidade de 
    cobaias utilizadas em cada experimento.

    Entrada
    A primeira linha de entrada contém um valor inteiro N que indica os vários casos de teste que vem a seguir. Cada
    caso de teste contém um inteiro Quantia (1 ≤ Quantia ≤ 15) que representa a quantidade de cobaias utilizadas e um
    caractere Tipo ('C', 'R' ou 'S'), indicando o tipo de cobaia (R:Rato S:Sapo C:Coelho).

    Saída
    Apresente o total de cobaias utilizadas, o total de cada tipo de cobaia utilizada e o percentual de cada uma em
    relação ao total de cobaias utilizadas, sendo que o percentual deve ser apresentado com dois dígitos após o ponto.
=end

casos_de_teste = gets.chomp.to_i
i = 0
soma = 0
c = 0
r = 0
s = 0
while i < casos_de_teste do
    teste = gets.chomp.split(' ')
    soma += teste[0].to_i
    tipo = teste[1]
    if tipo.upcase == "C"
        c += teste[0].to_i
    elsif tipo.upcase == "R"
        r += teste[0].to_i
    elsif tipo.upcase == "S"
        s += teste[0].to_i
    end
    i += 1
end
percentual_coelhos = c * 100.00 / soma
percentual_ratos = r * 100.00 / soma
percentual_sapos = s * 100.00 / soma

puts "Total: #{soma} cobaias"
puts "Total de coelhos: #{c}"
puts "Total de ratos: #{r}"
puts "Total de sapos: #{s}"
print "Percentual de coelhos: %0.02f %\n" % percentual_coelhos.round(2)
print "Percentual de ratos: %0.02f %\n" % percentual_ratos.round(2)
print "Percentual de sapos: %0.02f %\n" % percentual_sapos.round(2)