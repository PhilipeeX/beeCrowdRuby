=begin
        ANIMAL
    Neste problema, você deverá ler 3 palavras que definem o tipo de animal possível segundo o esquema abaixo, 
    da esquerda para a direita.  Em seguida conclua qual dos animais seguintes foi escolhido, através das três 
    palavras fornecidas.



    Entrada
    A entrada contém 3 palavras, uma em cada linha, necessárias para identificar o animal segundo a figura acima,
     com todas as letras minúsculas.
     EX: vertebrado
        mamifero
        onivoro

    Saída
    Imprima o nome do animal correspondente à entrada fornecida.
=end

entrada1 = gets.chomp
entrada2 = gets.chomp
entrada3 = gets.chomp

if entrada1 == "vertebrado"
    if entrada2 == "ave"
        if entrada3 == "carnivoro"
            puts "aguia"
        elsif entrada3 == "onivoro"
            puts "pomba"
        end
    elsif entrada2 == "mamifero"
        if entrada3 == "onivoro"
            puts "homem"
        elsif entrada3 == "herbivoro"
            puts "vaca"
        end
    end
elsif entrada1 == "invertebrado"
    if entrada2 == "inseto"
        if entrada3 == "hematofago"
            puts "pulga"
        elsif entrada3 == "herbivoro"
            puts "lagarta"
        end
    elsif entrada2 == "anelideo"
        if entrada3 == "hematofago"
            puts "sanguessuga"
        elsif entrada3 == "onivoro"
            puts "minhoca"
        end
    end
end