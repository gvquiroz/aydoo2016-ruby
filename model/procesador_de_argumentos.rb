class ProcesadorDeArgumentos

  def initialize
    @formato = "pretty"
    @tipo_de_ordenamiento = "asc"
    @nombreDeArchivo = nil
    @imprime = false
    @numero
  end
  def procesar_argumentos(args)
    if args.length > 0 then
      args.each do |argumentos|
        if argumentos.include? "--format="
          @formato = argumentos.partition('=').last
        elsif argumentos.include? "--output-file="
          @nombreDeArchivo = argumentos.partition('=').last
        elsif argumentos.include? "--sort:"
          @tipo_de_ordenamiento = argumentos.partition(':').last
        else
          @numero = argumentos.chomp.to_i
        end
      end
    end
  end

  def get_formato
    @formato
  end
  def get_nombre_de_archivo
    @nombreDeArchivo
  end
  def get_tipo_de_ordenamiento
    @tipo_de_ordenamiento
  end
  def imprime?
    !@nombreDeArchivo.nil?
  end

  def get_numero
    @numero
  end

end