frutas = ["maçã", "banana", "pêra"]

for fruta in frutas
    puts fruta 
end 

#uso de for, mesma coisa que em python, a diferença é o end 

x = 1
while x < 10
    puts x 
    x = x+1 #pode ser tb x=+1
end

#uso de while tb mesma coisa q python execeto pequenos detalhes tipo o desuso de ":"

count = 1

loop do 
    puts count
    break if count == 10
    count = count + 1
end

#uso do loop do 

10.times do
    puts "oi"
end 

#uso do times (vezes)