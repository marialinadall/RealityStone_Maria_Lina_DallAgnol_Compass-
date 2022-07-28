class Calculadora 
    def soma (x,y)
        x + y
    end 

    def subtrai (x,y)
        x - y
    end 

    def multiplica (x,y)
        x * y
    end 

    def divide (x,y)

        if y == 0
            return 'Não é possível dividir um número por 0, tente novamente!'
        end
        
        if (x / y) != 0
            return (x/y).round(2)
        end

        x / y
    end
end 