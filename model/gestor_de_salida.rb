class GestorDeSalidaSpec
  def initialize(array_de_valores)
    @mis_valores = array_de_valores
  end

  def imprimePretty
      @mis_valores.each do | valor | print "#{valor} "
    end
  end

  def imprimeQuiett
    @mis_valores.each do | valor | puts valor
    end
  end

end