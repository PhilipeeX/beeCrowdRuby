=begin
        Tem-se um conjunto de dados contendo a altura e o sexo (M, F) de N pessoas. Fazer um programa que 
        calcule e escreva:
         a maior e a menor altura do grupo
         a média de altura das mulheres
         o número de homens
        
        Exemplo:
        Entrada                             Saída
        5
        1.70 F
        1.83 M
        1.54 M
        1.61 F
        1.75 F
                                            Menor altura = 1.54
                                            Maior altura = 1.83
                                            Media das alturas das mulheres = 1.69
                                            Numero de homens = 2

=end

quantidade_de_pessoas = gets.chomp.to_i
i = 0
altura = Array.new()
genero = Array.new()

while i < quantidade_de_pessoas do 
   dados = gets.chomp.split(' ')
   altura << dados[0].to_f
   genero << dados[1]
   
   i += 1
end
i = 0
menor_altura = altura[0]
maior_altura = altura[0]
quantidade_de_homens = 0
altura_mulheres = 0
mulheres = 0
while i < quantidade_de_pessoas do 
   if altura[i] < menor_altura
       menor_altura = altura[i]
   end 
   if altura[i] > maior_altura
       maior_altura = altura[i]
   end 
   if genero[i].upcase == "M"
       quantidade_de_homens += 1
   else
       altura_mulheres += altura[i]
       mulheres += 1
   end 
   i += 1 
end
media = altura_mulheres / mulheres
puts "Menor altura = #{menor_altura}"
puts "Maior altura = #{maior_altura}"
puts "Media das alturas das mulheres = #{media.round(2)}"
puts "Numero de homens = #{quantidade_de_homens}"