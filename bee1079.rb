=begin
        MEDIAS PONDERADAS
    
    Leia 1 valor inteiro N, que representa o número de casos de teste que vem a seguir. Cada caso de
     teste consiste de 3 valores reais, cada um deles com uma casa decimal. Apresente a média ponderada
      para cada um destes conjuntos de 3 valores, sendo que o primeiro valor tem peso 2, o segundo valor 
      tem peso 3 e o terceiro valor tem peso 5.

    Entrada
    O arquivo de entrada contém um valor inteiro N na primeira linha. Cada N linha a seguir contém um caso
     de teste com três valores com uma casa decimal cada valor.

    Saída
    Para cada caso de teste, imprima a média ponderada dos 3 valores, conforme exemplo abaixo.
=end

casos_de_teste = gets.chomp.to_i
i = 0

while i < casos_de_teste do
    valores_reais = gets.chomp.split(' ')
    valores_reais.each { |i| i = i.to_f}
    media = (valores_reais[0].to_f * 2 + valores_reais[1].to_f * 3 + valores_reais[2].to_f * 5)
    media /= 10
    i += 1
    puts "%0.01f\n" % media.round(1)
end