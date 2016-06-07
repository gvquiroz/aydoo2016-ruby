class GestorDeSalida
  def initialize(miResultado)
    @valorAImprimir = miResultado
  end

  def imprimir_por_pantalla
    print "#{@valorAImprimir}\n"
  end
end