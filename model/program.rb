require_relative 'procesador_de_argumentos'
require_relative 'gestor_de_salida'
require_relative 'formateador_pretty'
require_relative 'formateador_quiett'
require_relative 'calculadora_de_primos'

  procesador = ProcesadorDeArgumentos.new
  calculadora = CalculadoraDePrimos.new

  formatos = {'pretty' => FormateadorPretty.new ,
              'quiett' => FormateadorQuiett.new
  }

  procesador.procesar_argumentos(ARGV)
  numero = ARGV[0].chomp.to_i
  formato_por_parametro = procesador.get_formato
  orden_por_parametro = procesador.get_tipo_de_ordenamiento

  calculadora.calcular(numero)

  calcularEnOrden = { 'asc' => calculadora.get_resultado_en_orden_ascendente,
            'des' => calculadora.get_resultado_en_orden_descendente
  }

  resultado = calcularEnOrden[orden_por_parametro]
  resultado_formateado = formatos[formato_por_parametro].get_contenido_formateado(resultado)

  gestor_de_salida = GestorDeSalida.new(resultado_formateado)

  if procesador.imprime?
    gestor_de_salida.persistir_en_archivo(procesador.get_nombre_de_archivo)
  else
    gestor_de_salida.imprimir_por_pantalla
  end


