=begin
            QUADRADO AO CUBO
    
    Escreva um programa que leia um valor inteiro N (1 < N < 1000).
     Este N é a quantidade de linhas de saída que serão apresentadas na 
     execução do programa.

    Entrada
    O arquivo de entrada contém um número inteiro positivo N.

    Saída
    Imprima a saída conforme o exemplo fornecido.
=end

linhas = gets.chomp.to_i
i = 0
a = 1
while i < linhas do
    puts "#{a} #{a ** 2} #{a ** 3}"
    a += 1
    i += 1 
end 