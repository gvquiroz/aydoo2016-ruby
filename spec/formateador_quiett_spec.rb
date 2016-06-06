require 'rspec'
require_relative '../model/formateador_quiett'
class FormateadorQuiettSpec
  describe 'FormateadorQuiett' do

    it 'should return 2 2 3 5 when get contenido formateado' do
      array_con_contenido = [2, 2, 3, 5]
      expected_string = "2\n2\n3\n5"
      formateador = FormateadorPretty.new
      expect(formateador.get_contenido_formateado(array_con_contenido)).to eq(expected_string)
    end

  end
end
