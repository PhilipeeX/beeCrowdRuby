=begin
            MAIOR E POSICAO
    
    Leia 100 valores inteiros. Apresente então o maior valor lido e a posição dentre os 100 valores lidos.

    Entrada
    O arquivo de entrada contém 100 números inteiros, positivos e distintos.

    Saída
    Apresente o maior valor lido e a posição de entrada, conforme exemplo abaixo.
=end

i = 1
maior = 0
until i > 100 do
    valor_lido = gets.chomp.to_i
if valor_lido > maior
    maior = valor_lido
    indice_do_maior = i
end
i += 1
end
puts "#{maior}"
puts "#{indice_do_maior}"