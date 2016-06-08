class FormateadorQuiett
  def get_contenido_formateado (miArray)
    @resultado = ""
    miArray.each do |valor|
      @resultado += "#{valor}\n"
    end
    @resultado.chop!
  end
end
