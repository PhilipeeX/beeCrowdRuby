=begin
    Fazer um programa para ler um vetor de N números reais. Em seguida, mostrar na tela a média aritmética de todos
    elementos. Depois mostrar todos os elementos do vetor que estejam abaixo da média.

    Exemplo:
    Entrada                                 Saída
    4
    10.0 15.5 13.2 9.8
                                            12.125
                                            10.0
                                            9.8
=end

numeros_reais = Array.new(gets.chomp.to_i)

numeros_reais = gets.chomp.split(' ')
numeros_reais.map! { |i| i = i.to_f}

i = 0
soma = 0
while i < numeros_reais.size do
    soma += numeros_reais[i]
    i += 1
end
media = soma / numeros_reais.size
puts media
numeros_reais.each do |i| 
    if i < media 
        puts i 
    end
end