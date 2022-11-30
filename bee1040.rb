=begin
        MEDIA 3
    Leia quatro números (N1, N2, N3, N4), cada um deles com uma casa decimal, correspondente às quatro notas de um aluno.
     Calcule a média com pesos 2, 3, 4 e 1, respectivamente, para cada uma destas notas e mostre esta média acompanhada 
     pela mensagem "Media: ". Se esta média for maior ou igual a 7.0, imprima a mensagem "Aluno aprovado.". 
     Se a média calculada for inferior a 5.0, imprima a mensagem "Aluno reprovado.". Se a média calculada for um 
     valor entre 5.0 e 6.9, inclusive estas, o programa deve imprimir a mensagem "Aluno em exame.".

    No caso do aluno estar em exame, leia um valor correspondente à nota do exame obtida pelo aluno. Imprima então a mensagem 
    "Nota do exame: " acompanhada pela nota digitada. Recalcule a média (some a pontuação do exame com a média anteriormente
         calculada e divida por 2). e imprima a mensagem "Aluno aprovado." (caso a média final seja 5.0 ou mais ) 
         ou "Aluno reprovado.", (caso a média tenha ficado 4.9 ou menos). Para estes dois casos (aprovado ou reprovado
          após ter pego exame) apresente na última linha uma mensagem "Media final: " seguido da média final para esse 
          aluno.

    Entrada
    A entrada contém quatro números de ponto flutuante correspendentes as notas dos alunos.
    ex: 2.0 4.0 7.5 8.0
        6.4

    Saída
    Todas as respostas devem ser apresentadas com uma casa decimal. As mensagens devem ser impressas conforme a 
    descrição do problema. Não esqueça de imprimir o enter após o final de cada linha, caso contrário obterá 
    "Presentation Error".

=end

numeros = gets.chomp.split(' ')

n1 = numeros[0].to_f
n2 = numeros[1].to_f
n3 = numeros[2].to_f
n4 = numeros[3].to_f

media = ((n1 * 2) + (n2 * 3) + (n3 * 4) + n4) / 10

puts "Media: #{media.round(2)}"
if media >= 7.0
    puts "Aluno aprovado."
elsif media < 5.0
    puts "Aluno reprovado."
elsif media >= 5.0 && media <= 6.9
    puts "Aluno em exame."
    exame = gets.chomp.to_f
    puts "Nota do exame: %0.01f\n" % exame.round(1)
        novaMedia = (media + exame) / 2
    if novaMedia >= 5.0 
        puts "Aluno aprovado."
    else
        puts "Aluno reprovado."
    end
    puts "Media final: %0.01f\n" % novaMedia.round(1)
end