require 'rspec'
require_relative '../metodos/calculadora.rb'

describe('CÁLCULO ADIÇÃO') do
    calculadora = Calculadora.new

    #operação: adição 

    it('Deve somar dois números positivos inteiros') do 
        expect(calculadora.soma(10,4)).to eq 14 
    end 

    it('Deve somar dois números negativos inteiros') do
        expect(calculadora.soma(-10,-4)).to eq -14
    end 

    it('Deve somar um número positivo com um negativo') do 
        expect(calculadora.soma(10,-4)).to eq 6
    end 

    it('Deve somar um número negativo com um positivo') do 
        expect(calculadora.soma(-10,4)).to eq -6
    end 

    it('Deve somar com um número 0 e outro positivo') do 
        expect(calculadora.soma(0,4)).to eq 4
    end 

    it('Deve somar com um número 0 e outro negativo') do 
        expect(calculadora.soma(0,-4)).to eq -4
    end 

    it('Deve somar floats positivos') do
        expect(calculadora.soma(10.2,5.3)).to eq 15.5
    end

    it('Deve somar floats negativos') do 
        expect(calculadora.soma(-10.2,-5.3)).to eq -15.5
    end

    it('Deve somar float positivo com inteiro')do 
        expect(calculadora.soma(10.2,5)).to eq 15.2
    end

    it('Deve somar inteiro com float positivo')do 
        expect(calculadora.soma(5,10.2)).to eq 15.2
    end

    it('Deve somar float negativo com positivo') do
        expect(calculadora.soma(-10.2,5.6)).to eq -4.6
    end

    it('Deve somar float positivo com negativo') do
        expect(calculadora.soma(10.2,-5.6)).to eq 4.6
    end

    it('Deve somar float negativo com inteiro') do
       expect(calculadora.soma(-10.2,5).round(1)).to eq -5.2
    end

    it('Deve somar inteiro com float negativo') do
        expect(calculadora.soma(10,-5.6).round(1)).to eq 4.4
    end

end 

describe('CÁLCULO SUBTRAÇÃO') do
    calculadora = Calculadora.new

    #operação: subtração

    it('Deve subtrair dois números positivos') do
        expect(calculadora.subtrai(20,12)).to eq 8
    end 

    it('Deve subtrair dois números negativos') do
        expect(calculadora.subtrai(-20,-12)).to eq -8
    end 

    it('Deve subtrair dois floats negativos') do
        expect(calculadora.subtrai(-20.2,-12.4).round(1)).to eq -7.8
    end 

    it('Deve subtrair dois floats positivos') do
        expect(calculadora.subtrai(20.2,12.4).round(1)).to eq 7.8
    end 

    it('Deve subtrair um inteiro positivo e outro negativo') do
        expect(calculadora.subtrai(20,-12)).to eq 32
    end

    it('Deve subtrair se conter 0 na equação') do
        expect(calculadora.subtrai(0,-12)).to eq 12
    end 

    it('Deve subtrair um inteiro positivo de um float') do
        expect(calculadora.subtrai(5,-2.6)).to eq 7.6
    end 

    it('Deve subtrair um float qualquer de um inteiro positivo') do
        expect(calculadora.subtrai(-2.65,5)).to eq -7.65
    end 

    it('Deve subtrair um inteiro negativo de um float qualquer') do
        expect(calculadora.subtrai(-12,6.5)).to eq -18.5
    end 

    it('Deve subtrair um float qualquer de um inteiro negativo') do
        expect(calculadora.subtrai(6.5,-12)).to eq 18.5
    end 
end

describe('CÁLCULO MULTIPLICAÇÃO') do
    calculadora = Calculadora.new
    
    #operação: multiplicação

    it('Deve multiplicar inteiros positivos') do 
        expect(calculadora.multiplica(6,4)).to eq 24
    end 

    it('Deve multiplicar inteiros negativos') do 
        expect(calculadora.multiplica(-6,-4)).to eq 24
    end 

    it('Deve multiplicar inteiro positivo com inteiro negativo') do 
        expect(calculadora.multiplica(6,-4)).to eq -24
    end 

    it('Deve multiplicar inteiro negativo com inteiro positivo') do 
        expect(calculadora.multiplica(-6,4)).to eq -24
    end 

    it('Deve multiplicar números com 0') do 
        expect(calculadora.multiplica(6,0)).to eq 0
    end 

    it('Deve multiplicar float com inteiros positivos') do 
        expect(calculadora.multiplica(2.25,4)).to eq 9
    end 

    it('Deve multiplicar inteiros positivos com float') do 
        expect(calculadora.multiplica(4,2.25)).to eq 9
    end 

    it('Deve multiplicar float com inteiros negativos') do 
        expect(calculadora.multiplica(2.4,-2)).to eq -4.8
    end 

    it('Deve multiplicar inteiros negativos com float') do 
        expect(calculadora.multiplica(-2,2.4)).to eq -4.8
    end 

    it('Deve multiplicar float positivo com float negativo') do 
        expect(calculadora.multiplica(2.28,-4.3).round(3)).to eq -9.804
    end 

    it('Deve multiplicar float negativo com float positivo') do 
        expect(calculadora.multiplica(-4.3,2.28).round(3)).to eq -9.804
    end 

    it('Deve multiplicar floats positivos') do 
        expect(calculadora.multiplica(3.76,2.5).round(1)).to eq 9.4
    end 

    it('Deve multiplicar floats negativos') do 
        expect(calculadora.multiplica(-3.76,-2.5).round(1)).to eq 9.4
    end 
end 

describe('CÁLCULO DIVISÃO') do
    calculadora = Calculadora.new
    
    #operação: divisão

    it('Deve dividir inteiros positivos') do 
        expect(calculadora.divide(10,2)).to eq 5
    end 

    it('Não deve dividir quaisquer números por 0') do 
        expect(calculadora.divide(10,0)).to include 'Não é possível dividir um número por 0, tente novamente!'
    end 

    it('Deve dividir inteiros negativos') do 
        expect(calculadora.divide(-10,-2)).to eq 5
    end 

    it('Deve dividir inteiros positivos por inteiros negativos') do 
        expect(calculadora.divide(10,-2)).to eq -5
    end 

    it('Deve dividir inteiros negativos por inteiros positivos') do 
        expect(calculadora.divide(-10,2)).to eq -5
    end 

    it('Deve dividir floats positivos') do 
        expect(calculadora.divide(10.75,2.3)).to eq 4.67
    end 

    it('Deve dividir floats negativos') do 
        expect(calculadora.divide(10.75,2.3)).to eq 4.67
    end 

    it('Deve dividir floats positivos por floats negativos') do 
        expect(calculadora.divide(10.75,-2.3)).to eq -4.67
    end 

    it('Deve dividir floats negativos por floats positivos') do 
        expect(calculadora.divide(-10.75,2.3)).to eq -4.67
    end 

    it('Deve dividir inteiros positivos por floats positivos') do 
        expect(calculadora.divide(10,2.5)).to eq 4
    end 

    it('Deve dividir floats positivos por inteiros positivos') do 
        expect(calculadora.divide(20.5,2)).to eq 10.25
    end 

    it('Deve dividir inteiros negativos por floats positivos') do 
        expect(calculadora.divide(-10,2.5)).to eq -4
    end 
    
    it('Deve dividir floats positivos por inteiros negativos') do 
        expect(calculadora.divide(10.75,-2)).to eq -5.38
    end 


end 

describe('CÁLCULO POTÊNCIA') do
    calculadora = Calculadora.new
    
    #operação: potenciação

end 

describe('CÁLCULO RAIZ QUADRADA') do
    calculadora = Calculadora.new
    
    #operação: raiz quadrada

end 

