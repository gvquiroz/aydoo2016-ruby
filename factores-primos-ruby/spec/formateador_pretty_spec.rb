require 'rspec'
require_relative '../model/formateador_pretty'
class FormateadorPrettySpec
  describe 'FormateadorPretty' do

    it 'should return 2 2 3 5 when get contenido formateado' do
      array_con_contenido = [2, 2, 3, 5]
      expected_string = "2 2 3 5"
      formateador = FormateadorPretty.new
      expect(formateador.get_contenido_formateado(array_con_contenido)).to eq(expected_string)
    end

    it 'should return a b c d when get contenido formateado' do
      array_con_contenido = ["a", "b", "c", "d"]
      expected_string = "a b c d"
      formateador = FormateadorPretty.new
      expect(formateador.get_contenido_formateado(array_con_contenido)).to eq(expected_string)
    end

  end
end
