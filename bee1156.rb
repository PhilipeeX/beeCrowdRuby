=begin
            SEQUENCIA S II

    Escreva um algoritmo para calcular e escrever o valor de S, 
    sendo S dado pela fórmula:
    S = 1 + 3/2 + 5/4 + 7/8 + ... + 39/?

    Entrada
    Não há nenhuma entrada neste problema.

    Saída
    A saída contém um valor correspondente ao valor de S.
    O valor deve ser impresso com dois dígitos após o ponto decimal.
=end

s = 1
i = 3
j = 1
while i <= 39 do
    s = s + (i/2.0 ** j)
    i += 2
    j += 1
end

puts "%0.02f\n" % s.round(2)