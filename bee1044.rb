=begin
        MÚLTIPLOS
    Leia 2 valores inteiros (A e B). Após, o programa deve mostrar uma mensagem "Sao Multiplos" ou "Nao sao Multiplos", 
    indicando se os valores lidos são múltiplos entre si.

    Entrada
    A entrada contém valores inteiros.

    Saída
    A saída deve conter uma das mensagens conforme descrito acima.
=end

valores = gets.chomp.split(' ')

A = valores[0].to_i
B = valores[1].to_i

if A % B == 0 || B % A == 0
    puts "Sao Multiplos"
else
    puts "Nao sao Multiplos"
end