def imc(peso, altura)
    if altura <= 0
        return 'IMC não pode ser calculado, tente novamente' #retorna isso
    end 
    imc_calculado = peso / (altura*altura)
    imc_calculado.round(1) #arredonda pra uma casa decimal
end 