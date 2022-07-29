def talk (firstname, lastname)
    puts "Olá #{firstname} #{lastname}, como vc está?"
end 

talk("Maria", "Lina")

#exemplo 1

def sinal (cor = vermelho)
    puts ("O sinal está #{cor}")
end

cor = "amarelo"
sinal(cor)

#exemplo 2 (executa com a nova cor)
