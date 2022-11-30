entrada = gets.chomp.split(' ')

codigo = entrada[0].to_i
quantidade = entrada[1].to_i
conta = 0

case codigo
when 1
    conta = quantidade * 4.00
when 2
    conta = quantidade * 4.50
when 3 
    conta = quantidade * 5.00
when 4
    conta = quantidade * 2.00
when 5
    conta = quantidade * 1.50
end

puts "Total: R$ %0.02f\n" % conta.round(2)