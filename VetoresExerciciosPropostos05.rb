=begin
    Fazer um programa para ler um vetor de N números inteiros. Em seguida, mostrar na tela a média aritmética somente
    dos números pares lidos.

    Exemplo:
    Entrada                                     Saída
    6
    8 2 11 14 13 20
                                                    11.0
=end

# tentar denovo usando array.count

numeros_inteiros = Array.new(gets.chomp.to_i)

numeros_inteiros = gets.chomp.split(' ')
numeros_inteiros.map! { |i| i = i.to_i}
x = 0
pares = 0
numeros_inteiros.each do |i|
    if i % 2 == 0
        x += 1
        pares += i 
    end
end
media = pares / x 
puts media.to_f