=begin  
            TEMPO DE JOGO COM MINUTOS
    Leia a hora inicial, minuto inicial, hora final e minuto final de um jogo. A seguir calcule a duração do jogo.

    Obs: O jogo tem duração mínima de um (1) minuto e duração máxima de 24 horas.

    Entrada
    Quatro números inteiros representando a hora de início e fim do jogo.
        EX: 7 8 9 10

    Saída
    Mostre a seguinte mensagem: “O JOGO DUROU XXX HORA(S) E YYY MINUTO(S)” .

=end

entrada = gets.chomp.split(' ')

hora_inicial = entrada[0].to_i
minuto_inicial = entrada[1].to_i
hora_final = entrada[2].to_i
minuto_final = entrada[3].to_i

duracao_horas = 0
duracao_minutos = 0

while hora_inicial > 23 || hora_final > 23 || minuto_inicial > 59 || minuto_final > 59
    puts "Valores inseridos incorretamente."
    entrada = gets.chomp.split(' ')
    hora_inicial = entrada[0].to_i
    minuto_inicial = entrada[1].to_i
    hora_final = entrada[2].to_i
    minuto_final = entrada[3].to_i
end

if hora_final == hora_inicial 
    if minuto_final > minuto_inicial
        duracao_minutos = minuto_final - minuto_inicial
    elsif minuto_final == minuto_inicial 
        duracao_minutos = 0
        duracao_horas = 24
    else
        duracao_horas = 23
        duracao_minutos = 60 - (minuto_inicial - minuto_final)
    end
elsif hora_final > hora_inicial
    if minuto_final > minuto_inicial 
        duracao_horas = hora_final - hora_inicial
        duracao_minutos = minuto_final - minuto_inicial
    elsif minuto_final == minuto_inicial
        duracao_horas = hora_final - hora_inicial
    elsif minuto_final < minuto_inicial
        duracao_horas = (hora_final - hora_inicial) - 1
        duracao_minutos = 60 - (minuto_inicial - minuto_final) 
    end
elsif hora_final < hora_inicial
    
    if minuto_final > minuto_inicial
        duracao_horas = (24 - hora_inicial) + hora_final 
        duracao_minutos = minuto_final - minuto_inicial
    elsif minuto_final < minuto_inicial
        duracao_horas = ((24 - hora_inicial) + hora_final) - 1
        duracao_minutos = 60 - (minuto_inicial - minuto_final)
    end
end

if duracao_horas > 24
    duracao_horas = 24
end
if duracao_minutos > 59
    duracao_minutos = 59
end
puts "O JOGO DUROU #{duracao_horas} HORA(S) E #{duracao_minutos} MINUTO(S)"