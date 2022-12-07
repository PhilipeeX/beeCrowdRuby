=begin
    Faça um programa que leia N números reais e armazene-os em um vetor. Em seguida, mostrar na tela o maior número
    do vetor (supor não haver empates). Mostrar também a posição do maior elemento.
        Exemplo:
    Entrada                         Saída
    6
    8.0 4.0 10.0 14.0 13.0 7.0
                                    14.0
                                    3
=end

vetor = Array.new(gets.chomp.to_i)
vetor = gets.split(' ')
i = 0
vetor2 = []
while i < vetor.size do
    vetor2.push(vetor[i].to_f)
    i += 1
end
i = 0
maior = 0
indice_do_maior = 0
vetor2.each_with_index do |valor, indice|
    if valor > maior
        puts "funcionou"
        maior = valor
        indice_do_maior = indice
    end
end
puts maior
puts indice_do_maior