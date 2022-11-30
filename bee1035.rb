=begin
        TESTE DE SELEÇÃO 1
    Leia 4 valores inteiros A, B, C e D. A seguir, se B for maior do que C e se D for maior do que A, 
        e a soma de C com D for maior que a soma de A e B e se C e D, ambos, forem positivos e se a variável 
        A for par escrever a mensagem "Valores aceitos", senão escrever "Valores nao aceitos".

    Entrada
    Quatro números inteiros A, B, C e D.

    Saída
    Mostre a respectiva mensagem após a validação dos valores.
=end

valores = gets.chomp.split(' ')

A = valores[0].to_i
B = valores[1].to_i
C = valores[2].to_i
D = valores[3].to_i

if B > C && D > A && (C + D) > (A + B) && C > 0 && D > 0 && A % 2 == 0
    puts "Valores aceitos"
else
    puts "Valores nao aceitos"
end