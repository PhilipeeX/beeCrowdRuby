=begin
        FATORIAL SIMPLES

    Ler um valor N. Calcular e escrever seu respectivo fatorial. 
    Fatorial de N = N * (N-1) * (N-2) * (N-3) * ... * 1.

    Entrada
    A entrada contém um valor inteiro N (0 < N < 13).

    Saída
    A saída contém um valor inteiro, correspondente ao fatorial de N.
=end

entrada = gets.chomp.to_i
n = 1
fatorial = entrada
while n < entrada do
    fatorial *= (entrada - n)
    n += 1
end

puts "#{fatorial}"