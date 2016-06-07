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
        end
      end
    end
  end

  def get_formato
    @formato
  end
end