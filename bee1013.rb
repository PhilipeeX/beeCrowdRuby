=begin
    Faça um programa que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “eh o maior”. 
    Utilize a fórmula:

    Obs.: a fórmula apenas calcula o maior entre os dois primeiros (a e b). Um segundo passo, portanto é necessário para 
    chegar no resultado esperado.

    Entrada
    O arquivo de entrada contém três valores inteiros.

    Saída
    Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".

=end
valor = gets.split(' ')
A = valor[0].to_i
B = valor[1].to_i
C = valor[2].to_i

maiorAB = (A + B + (A - B).abs) / 2
maior = (maiorAB + C + (maiorAB - C).abs) / 2

puts "#{maior} eh o maior"