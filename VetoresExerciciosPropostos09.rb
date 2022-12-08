=begin
        Um comerciante deseja fazer o levantamento do lucro das mercadorias que ele comercializa. Para isto, mandou digitar
    um conjunto de N mercadorias, cada uma contendo nome, preço de compra e preço de venda das mesmas. Fazer um
    programa que leia tais dados e determine e escreva quantas mercadorias proporcionaram:
     lucro < 10%
     10% ≤ lucro ≤ 20%
     lucro > 20%
    Determine e escreva também o valor total de compra e de venda de todas as mercadorias, assim como o
    lucro total.

    Exemplo:

    Entrada                         Saída
    4
    Feijao 10.00 11.00
    Arroz 12.00 12.80
    Oleo 5.00 5.70
    Sal 3.00 4.00
                                    Lucro abaixo de 10%: 1
                                    Lucro entre 10% e 20%: 2
                                    Lucro acima de 20%: 1
                                    Valor total de compra: 30.00
                                    Valor total de venda: 33.50
                                    Lucro total: 3.50
=end

mercadorias = gets.chomp.to_i
i = 0
mercadoria = Array.new()
preco_compra = Array.new()
preco_venda = Array.new()
diferenca_de_preco = Array.new()
valor_total_compra = 0
valor_total_venda = 0
while i < mercadorias do 
   dados = gets.chomp.split(' ')
   mercadoria << dados[0]
   preco_compra << dados[1].to_f
   preco_venda << dados[2].to_f
   diferenca_de_preco << preco_venda[i].to_f - preco_compra[i].to_f
   i += 1 
end
i = 0 
lucro_menor10 = 0
lucro_entre10_20 = 0
lucro_maior20 = 0

while i < mercadorias do 
   if diferenca_de_preco[i] < preco_compra[i] * 0.1
      lucro_menor10 += 1
   elsif diferenca_de_preco[i] >= preco_compra[i] * 0.1 && diferenca_de_preco[i] <= preco_compra[i] * 0.2
      lucro_entre10_20 += 1
   elsif diferenca_de_preco[i] > preco_compra[i] * 0.2
      lucro_maior20 += 1
   end
   valor_total_compra += preco_compra[i]
   valor_total_venda += preco_venda[i]
   i += 1
end
lucro_total = valor_total_venda - valor_total_compra

puts "Lucro abaixo de 10%: #{lucro_menor10}"
puts "Lucro entre 10% e 20%: #{lucro_entre10_20}"
puts "Lucro acima de 20%: #{lucro_maior20}"
puts "Valor total de compra: %0.02f\n" % valor_total_compra.round(2)
puts "Valor total de venda: %0.02f\n" % valor_total_venda.round(2)
puts "Lucro total: %0.02f\n" % lucro_total.round(2)