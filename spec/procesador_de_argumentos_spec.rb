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

    it 'should be pretty when get formato' do
      expected_string = "pretty"
      procesador = ProcesadorDeArgumentos.new
      expect(procesador.get_formato).to eq(expected_string)
    end

    it 'should be pretty when get formato' do
      array_con_contenido = ["--sort;asc"]
      expected_string = "pretty"
      procesador = ProcesadorDeArgumentos.new
      procesador.procesar_argumentos(array_con_contenido)
      expect(procesador.get_formato).to eq(expected_string)
    end
  end
end