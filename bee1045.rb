=begin
        TIPOS DE TRIANGULOS
    Leia 3 valores de ponto flutuante A, B e C e ordene-os em ordem decrescente, de modo que o lado A 
    representa o maior dos 3 lados. A seguir, determine o tipo de triângulo que estes três lados formam,
     com base nos seguintes casos, sempre escrevendo uma mensagem adequada:

    se A ≥ B+C, apresente a mensagem: NAO FORMA TRIANGULO
    se A2 = B2 + C2, apresente a mensagem: TRIANGULO RETANGULO
    se A2 > B2 + C2, apresente a mensagem: TRIANGULO OBTUSANGULO
    se A2 < B2 + C2, apresente a mensagem: TRIANGULO ACUTANGULO
    se os três lados forem iguais, apresente a mensagem: TRIANGULO EQUILATERO
    se apenas dois dos lados forem iguais, apresente a mensagem: TRIANGULO ISOSCELES
    Entrada
    A entrada contem três valores de ponto flutuante de dupla precisão A (0 < A) , B (0 < B) e C (0 < C).
    EX: 7.0 5.0 7.0

    Saída
    Imprima todas as classificações do triângulo especificado na entrada.

=end


entrada = gets.chomp.split(' ')

primeiro_valor = entrada[0].to_f
segundo_valor = entrada[1].to_f
terceiro_valor = entrada[2].to_f

a = 0
b = 0
c = 0

if primeiro_valor <= segundo_valor && primeiro_valor <= terceiro_valor
    c = primeiro_valor
    if segundo_valor <= terceiro_valor
        b = segundo_valor
        a = terceiro_valor
    else
        b = terceiro_valor
        a = segundo_valor
    end
elsif segundo_valor <= terceiro_valor && segundo_valor <= primeiro_valor
    c = segundo_valor
    if primeiro_valor <= terceiro_valor
        b = primeiro_valor
        a = terceiro_valor
    else
        b = terceiro_valor
        a = primeiro_valor
    end
elsif terceiro_valor <= primeiro_valor && terceiro_valor <= segundo_valor
    c = terceiro_valor
    if primeiro_valor <= segundo_valor
        b = primeiro_valor
        a = segundo_valor
    else
        b = segundo_valor
        a = primeiro_valor
    end
end 

if a >= b + c
    puts "NAO FORMA TRIANGULO"
elsif a ** 2 == b ** 2 + c ** 2
    puts "TRIANGULO RETANGULO"
elsif a ** 2 > b ** 2 + c ** 2
    puts "TRIANGULO OBTUSANGULO"
elsif a ** 2 < b ** 2 + c ** 2
    puts "TRIANGULO ACUTANGULO"
end
if a == b && b == c
    puts "TRIANGULO EQUILATERO"
elsif a == b || b == c || c == a 
    puts "TRIANGULO ISOSCELES"
end