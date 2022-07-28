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

    def potencia (x,y)

        if x or y < 0
            return ((x ** y).to_f).round(6)
        end 

        x ** y
    end 

    def raizq (x)

        if x < 0
            return "Não pode ser realizado! Não há raiz quadrada de números negativos"
        end

        Math.sqrt(x).to_f.round(2)
    end 
end  