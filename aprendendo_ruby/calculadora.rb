resultado = " "

loop do 
    puts resultado 
    puts "Selecione uma operação que deseja realizar:"
    puts "(0) Sair"
    puts "(1) Adição"
    puts "(2) Subtração"
    puts "(3) Multiplicação"
    puts "(4) Divisão"
    opção = gets.chomp.to_i

    if opção == 1
        puts "Digite o primeiro número a ser somado: "
        n1 = gets.chomp.to_i 
        puts "Digite o segundo número a ser somado: "
        n2 = gets.chomp.to_i
        soma = n1 + n2  
        resultado = "A soma dos números é: #{soma}"
    
    elsif opção == 2
        puts "Digite o primeiro número a ser subtraído: "
        n1 = gets.chomp.to_i 
        puts "Digite o segundo número a ser subtraído: "
        n2 = gets.chomp.to_i
        subtração = n1 - n2  
        resultado = "A subtração dos números é: #{subtração}"
    
    elsif opção == 3
        puts "Digite o primeiro número a ser multiplicado: "
        n1 = gets.chomp.to_i 
        puts "Digite o segundo número a ser multiplicado: "
        n2 = gets.chomp.to_i
        multiplicação = n1 * n2  
        resultado = "A multiplicação dos números é: #{multiplicação}"
    
    elsif opção == 4
        puts "Digite o primeiro número a ser dividido: "
        n1 = gets.chomp.to_i 
        puts "Digite o segundo número a ser dividido: "
        n2 = gets.chomp.to_i
        divisão = n1 / n2  
        resultado = "A divisão dos números é: #{divisão}"

    elsif opção == 0
        break 
        system.clear 
    
    else 
        puts "Comando inválido!"
    end 
end 
    
    