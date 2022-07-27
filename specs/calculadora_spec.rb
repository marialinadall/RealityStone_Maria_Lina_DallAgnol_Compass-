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
        expect(calculadora.soma(0,8)).to eq 8
    end 
end