class CalculadoraDePrimos

  def calcular(miNumero)
    listaDeNumerosPrimos = Array.new

    for i in 2..miNumero
      while miNumero%i == 0
        miNumero = miNumero/i
        listaDeNumerosPrimos << i
      end
    end
    listaDeNumerosPrimos
  end

end