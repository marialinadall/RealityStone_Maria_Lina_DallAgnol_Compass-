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

end 

describe('CÁLCULO DIVISÃO') do
    calculadora = Calculadora.new
    
    #operação: divisão

end 

describe('CÁLCULO MULTIPLICAÇÃO') do
    calculadora = Calculadora.new
    
    #operação: potencialização

end 

describe('CÁLCULO MULTIPLICAÇÃO') do
    calculadora = Calculadora.new
    
    #operação: raiz quadrada

end 