class GestorDeSalidaSpec
  def initialize(miResultado)
    @valorAImprimir = miResultado
  end

  def imprimir_por_pantalla
    print "#{@valorAImprimir}"
  end
end