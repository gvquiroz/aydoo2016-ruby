class ProcesadorDeArgumentos

  def initialize
    @formato = "pretty"
    @tipo_de_ordenamiento = "pretty"
    @nombreDeArchivo = nil
    @imprime = false
  end
  def procesar_argumentos(args)
    if args.length > 0 then
      args.each do |argumentos|
        if argumentos.include? "--format="
          @formato = argumentos.partition('=').last
        elsif argumentos.include? "--output-file="
          @nombreDeArchivo = argumentos.partition('=').last
          @imprime = true
        elsif argumentos.include? "--sort:"
          @tipo_de_ordenamiento = argumentos.partition('=').last
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

  def imprime?
    @imprime
  end
end