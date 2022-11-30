=begin
            TEMPO DE JOGO
    Leia a hora inicial e a hora final de um jogo. A seguir calcule a duração do jogo, sabendo que o mesmo pode começar em um dia e terminar em outro, tendo uma duração mínima de 1 hora e máxima de 24 horas.

    Entrada
    A entrada contém dois valores inteiros representando a hora de início e a hora de fim do jogo.

    Saída
    Apresente a duração do jogo conforme exemplo abaixo.
=end

entrada = gets.chomp.split(' ')
hora_inicial = entrada[0].to_i
hora_final = entrada[1].to_i

duracao = 0
if hora_final > hora_inicial
    duracao = hora_final - hora_inicial
    if duracao > 24
        duracao = 24
    end
elsif hora_final < hora_inicial
    duracao = 24 - hora_inicial + hora_final
else
    duracao = 24
end

puts "O JOGO DUROU #{duracao} HORA(S)"