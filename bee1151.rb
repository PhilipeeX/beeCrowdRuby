=begin
            SEQUENCIA FIBONACCI FACIL
    
    A seguinte sequência de números 0 1 1 2 3 5 8 13 21... é conhecida
     como série de Fibonacci. Nessa sequência, cada número, depois dos 2 
     primeiros, é igual à soma dos 2 anteriores. Escreva um algoritmo que 
     leia um inteiro N (N < 46) e mostre os N primeiros números dessa série.

    Entrada
    O arquivo de entrada contém um valor inteiro N (0 < N < 46).

    Saída
    Os valores devem ser mostrados na mesma linha, separados por um espaço 
    em branco. Não deve haver espaço após o último valor.
=end

entrada = gets.chomp.to_i
i = 0
a = 0
b = 1
c = a + b

while i < entrada do 
    if i == 0
    print "#{a} "
    print "#{b} "
    print "#{c} "
    end
a = b + c
print "#{a} "
b = c + a
print "#{b} "
c = a + b
print "#{c} "
i += 1
end