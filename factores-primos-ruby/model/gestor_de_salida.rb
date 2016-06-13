class GestorDeSalida
  def initialize(miResultado)
    @valorAImprimir = miResultado
  end

  def imprimir_por_pantalla
    print "#{@valorAImprimir}\n"
  end

  def persistir_en_archivo(nombre_de_archivo)
    File.open(nombre_de_archivo, 'w') do |f|
      f.puts @valorAImprimir
    end
  end
end