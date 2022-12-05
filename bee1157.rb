=begin
            DIVISORES 1

    Ler um número inteiro N e calcular todos os seus divisores.

    Entrada
    O arquivo de entrada contém um valor inteiro.

    Saída
    Escreva todos os divisores positivos de N, um valor por linha.
=end

entrada = gets.chomp.to_i
i = 1
while i <= entrada do
    if entrada % i == 0
        puts "#{i}"
    end
    i += 1
end