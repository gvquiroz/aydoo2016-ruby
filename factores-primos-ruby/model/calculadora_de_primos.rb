class CalculadoraDePrimos

  def calcular(miNumero)
    @resultado_del_calculo = Array.new
    for i in 2..miNumero
      while miNumero%i == 0
        miNumero = miNumero/i
        @resultado_del_calculo << i
      end
    end
  end

  def get_resultado_en_orden_ascendente
    @resultado_del_calculo
  end

  def get_resultado_en_orden_descendente
    @resultado_del_calculo.reverse
  end
end