require 'rspec'
require_relative '../metodos/calculadora.rb'

describe('Calculadora') do
    calculadora = Calculadora.new

    it('Deve somar dois números inteiros') do 
        expect(calculadora.soma(10,4)).to eq 14 
    end 

end