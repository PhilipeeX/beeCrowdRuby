=begin  
            SOMANDO INTEIROS CONSECUTIVOS

    Faça um algoritmo para ler um valor A e um valor N. Imprimir a soma de A + i para cada i com os valores (0 <= i <= N-1).
    Enquanto N for negativo ou ZERO, um novo N(apenas N) deve ser lido.

    Entrada
    A entrada contém somente valores inteiros, podendo ser positivos ou negativos. Todos os valores estão na mesma linha.

    Saída
    A saída contém apenas um valor inteiro.
=end

valores = gets.chomp.split(' ')
a = valores[0].to_i
n = valores[1].to_i
while n <= 0 do
    n = gets.chomp.to_i 
end 
i = 0
soma = 0
while i <= (n - 1) do 
    soma += (a + i)
    i += 1
end
puts soma
