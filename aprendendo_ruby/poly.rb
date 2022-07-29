class Instrumento 
    def escrever
        puts 'digitando'
    end
end

class Teclado < Instrumento
end 

class Caneta < Instrumento
    def escrever 
        puts 'escrevendo a caneta'
    end 
end

class Lapis < Instrumento
    def escrever
        puts 'escrevendo a lapis'
    end
end

teclado = Teclado.new
lapis = Lapis.new 
caneta = Caneta.new

lapis.escrever 
teclado.escrever
caneta.escrever 

#não puxa mais da class "pai", mas sim dos próprios defs 

#exercício 

class Esportista
    def competir
        puts 'participando competicao'
    end
end 

class JogadorDeFutebol < Esportista
    def correr 
        puts 'correndo atras da bola'
    end
end 

class Maratonista < Esportista
    def correr 
        puts 'percorrendo circuito'
    end 
end 

fut = JogadorDeFutebol.new
maraton = Maratonista.new 

maraton.competir
maraton.correr
fut.competir
fut.correr


