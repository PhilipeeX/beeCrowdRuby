=begin
        AUMENTO DE SALARIO
    A empresa ABC resolveu conceder um aumento de salários a seus funcionários de acordo com a tabela abaixo:


                Salário	Percentual de Reajuste
                0 - 400.00              15%
                400.01 - 800.00         12%
                800.01 - 1200.00        10%
                1200.01 - 2000.00       7%
                Acima de 2000.00        4%

    

    Leia o salário do funcionário e calcule e mostre o novo salário, bem como o valor de reajuste ganho e o índice 
    reajustado,em percentual.

    Entrada
    A entrada contém apenas um valor de ponto flutuante, com duas casas decimais.

    Saída
    Imprima 3 linhas na saída: o novo salário, o valor ganho de reajuste (ambos devem ser apresentados com 2 
    casas decimais) e o percentual de reajuste ganho, conforme exemplo abaixo.
=end

salario = gets.chomp.to_f
novoSalario = 0
reajuste = 0
if salario > 0 && salario <= 400.00
    percentual = 15
    reajuste = salario * percentual / 100
    novoSalario = salario + reajuste
elsif salario > 400.00 && salario <= 800.00
    percentual = 12
    reajuste = salario * percentual / 100
    novoSalario = salario + reajuste
elsif salario > 800.00 && salario <= 1200.00
    percentual = 10
    reajuste = salario * percentual / 100
    novoSalario = salario + reajuste
elsif salario > 1200.00 && salario <= 2000.00
    percentual = 7
    reajuste = salario * percentual / 100
    novoSalario = salario + reajuste
elsif salario > 2000.00
    percentual = 4
    reajuste = salario * percentual / 100
    novoSalario = salario + reajuste
end

puts "Novo salario: %0.02f\n" % novoSalario.round(2)
puts "Reajuste ganho: %0.02f\n" % reajuste.round(2)
puts "Em percentual: #{percentual} %"
