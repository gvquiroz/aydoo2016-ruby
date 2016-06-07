class GestorDeSalida
  def initialize(miResultado)
    @valorAImprimir = miResultado
  end

  def imprimir_por_pantalla
    print "#{@valorAImprimir}\n"
  end

  def persistir_en_archivo

  end
end