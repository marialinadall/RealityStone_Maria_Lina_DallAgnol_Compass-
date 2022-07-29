status_produto = "fechado"

unless status_produto == "aberto" # é tipo caso não seja aberto = pode (if not), caso for aberto dai não pode
    change = "pode"  
else 
    change = "não pode "
end 

puts "Você #{change} mudar o produto"

#unless

puts "Digite o mês em que você nasceu: "
mês = gets.chomp.to_i

case mês
when 1..3 
    puts "Você nasceu no primeiro trimestre do ano"
when 4..6
    puts "Você nasceu na primeira metade do ano"
when 7..9
    puts "Você nasceu na segunda metade do ano"
when 10..12
    puts "Você nasceu no final do ano"
else 
    puts "Não foi possível identificar!"
end