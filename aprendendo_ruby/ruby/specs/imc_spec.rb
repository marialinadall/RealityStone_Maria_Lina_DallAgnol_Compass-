require 'rspec'
require 'imc.rb'

describe ('Cálculo do IMC') do
    it('Deve calcular IMC com peso e altura corretos.') do #descreve o teste
        peso = 60
        altura = 1.56
        expect (imc(peso, altura)).to eq 24,6 #o que se espera que aconteça
    end 

    it('Não deve calcular IMC quando altura <= 0') do 
        peso = 60
        altura = 0 
        expect (imc(peso, altura)).to include 'IMC não pode ser calculado, tente novamente'
    end 
end 
