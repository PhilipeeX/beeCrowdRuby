=begin 
            SEQUENCIA LOGICA

    Escreva um programa que leia um valor inteiro N. N * 2 linhas de saída 
    serão apresentadas na execução do programa, seguindo a lógica do exemplo
    abaixo. Para valores com mais de 6 dígitos, todos os dígitos devem 
    ser apresentados.

    Entrada
    O arquivo de entrada contém um número inteiro positivo N (1 < N < 1000).

    Saída
    Imprima a saída conforme o exemplo fornecido.   
=end

linhas = gets.chomp.to_i
i = 0
a = 1

while i < linhas do
    puts "#{a} #{a ** 2} #{a ** 3}"
    puts "#{a} #{(a ** 2) + 1} #{(a ** 3) + 1}"
    a += 1
    i += 1 
end 