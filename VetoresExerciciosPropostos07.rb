=begin
        Fazer um programa para ler um conjunto de N nomes de alunos, bem como as notas que eles tiraram no 1º e 2º semestres.
        Cada uma dessas informações deve ser armazenada em um vetor. Depois, imprimir os nomes dos alunos aprovados,
        considerando aprovados aqueles cuja média das notas seja maior ou igual a seis.

        Exemplo:
        Entrada                                 Saída
        4
        Joao 7.0 8.5
        Maria 9.2 6.5
        Carlos 5.0 6.0
        Teresa 5.5 6.5
                                                Alunos aprovados:
                                                Joao
                                                Maria
                                                Teresa
=end

alunos = gets.chomp.to_i
i = 0
nomes = Array.new()
nota1 = Array.new()
nota2 = Array.new()

while i < alunos do 
   dados = gets.chomp.split(' ')
   nomes << dados[0]
   nota1 << dados[1].to_f
   nota2 << dados[2].to_f
   i += 1
end

puts "Alunos aprovados:"

i = 0
while i < nomes.size do 
    media = (nota1[i] + nota2[i]) / 2
    if media >= 6
        puts nomes[i].capitalize
    end
    i += 1
end