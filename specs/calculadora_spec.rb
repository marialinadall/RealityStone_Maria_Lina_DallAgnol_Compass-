require 'rspec'
require_relative '../metodos/calculadora.rb'

describe('Calculadora') do
    calculadora = Calculadora.new

    #operação: adição 

    it('Deve somar dois números inteiros') do 
        expect(calculadora.soma(10,4)).to eq 14 
    end 

    it('Deve somar dois números negativos') do
        expect(calculadora.soma(-10,-4)).to eq -14
    end 

    it('Deve somar um número positivo com um negativo') do 
        expect(calculadora.soma(-10,4)).to eq -6
    end 

    it('Deve somar com o número 0') do 
        expect(calculadora.soma(0,4)).to eq 4
    end 

    #operação: subtração

    it('Deve subtrair dois números positivos') do
        expect(calculadora.subtrai(20,12)).to eq 8
    end 

    it('Deve subtrair dois números negativos') do
        expect(calculadora.subtrai(-20,-12)).to eq -8
    end 

    it('Deve subtrair um número positivo e outro negativo') do
        expect(calculadora.subtrai(20,-12)).to eq 32
    end

    it('Deve subtrair se conter 0 na equação') do
        expect(calculadora.subtrai(0,-12)).to eq 12
    end 

end