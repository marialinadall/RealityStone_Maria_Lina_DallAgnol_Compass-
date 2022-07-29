resultado = " "

loop do 
    puts resultado
    puts "Selecione uma opção:"
    puts "(1) Descobrir idade"
    puts "(0) Sair"
    opção = gets.chomp.to_i

    if opção == 1
        puts "Digite o ano de nascimento:"
        nasc = gets.chomp.to_i
        puts "Digite o ano atual:"
        atual = gets.chomp.to_i
        idade = atual - nasc
        resultado = "Em #{atual} a pessoa que nasceu em #{nasc} tem #{idade} anos."
    
    elsif opção == 0
        break 
    else 
        puts "Comando inválido!"
    end
    system.clear
end 