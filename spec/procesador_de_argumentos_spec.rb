require 'rspec'
require_relative '../model/procesador_de_argumentos'
class ProcesadorDeArgumentosSpec
  describe 'ProcesadorDeArgumentos' do

    it 'should be pretty when get formato' do
      array_con_contenido = ["--format=pretty"]
      expected_string = "pretty"
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_formato).to eq(expected_string)
    end

    it 'should be pretty when get formato como default' do
      expected_string = "pretty"
      procesador = ProcesadorDeArgumentos.new
      expect(procesador.get_formato).to eq(expected_string)
    end

    it 'should be pretty when get formato con un parametro diferente por default' do
      array_con_contenido = ["--sort;asc"]
      expected_string = "pretty"
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_formato).to eq(expected_string)
    end
    it 'should be nil when get nombre de archivo' do
      array_con_contenido = ["--sort;asc"]
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_nombre_de_archivo).to eq(nil)
    end
    it 'should be gabi when get nombre de archivo cuando output file es gabi' do
      array_con_contenido = ["--output-file=gabi"]
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_nombre_de_archivo).to eq("gabi")
    end
    it 'should be true when imprime? al pasar un outputfile valido' do
      array_con_contenido = ["--output-file=gabi"]
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.imprime?).to be true
    end
    it 'should be asc when get ordenamiento cuando paso por parametro asc' do
      array_con_contenido = ["--sort:asc"]
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_tipo_de_ordenamiento).to eq("asc")
    end
  end
end