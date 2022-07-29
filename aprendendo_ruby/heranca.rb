class Animal 
    def dormir
        puts 'zzz'
    end 

    def pular
        puts 'poing'
    end
end

class Gato < Animal 
    def miar
        puts'meow'
    end
end

class Cachorro < Animal
    def latir
        puts'au au'
    end
end 

gato = Gato.new 
cachorro = Cachorro.new 

cachorro.pular #poing
gato.dormir #zzz
