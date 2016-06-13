class FormateadorPretty
  def get_contenido_formateado (miArray)
    @resultado = ""
    miArray.each do |valor|
      @resultado += "#{valor} "
    end
    @resultado.chop!
  end
end