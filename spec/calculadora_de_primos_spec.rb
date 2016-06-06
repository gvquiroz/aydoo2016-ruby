require 'rspec'
require_relative '../model/calculadora_de_primos'
class CalculadoraDePrimosSpec
  describe 'CalculadoraDePrimos' do

    it 'should return 2 2 3 5 when get resultado en orden ascendente 60' do
      expected_array = [2, 2, 3, 5]
      calculadora = CalculadoraDePrimos.new
      calculadora.calcular(60)
      resultado = calculadora.get_resultado_en_orden_ascendente
      expect(resultado).to match_array(expected_array)
    end

    it 'should return 2 3 3 5 when get resultado en orden ascendente 90' do
      calculadora = CalculadoraDePrimos.new
      calculadora.calcular(90)
      resultado = calculadora.get_resultado_en_orden_ascendente
      expect(resultado).to match_array([2, 3, 3, 5])
    end

    it 'should return 2 5 when get resultado en orden ascendente 10' do
      calculadora = CalculadoraDePrimos.new
      calculadora.calcular(10)
      resultado = calculadora.get_resultado_en_orden_ascendente
      expect(resultado).to match_array([2, 5])
    end

    it 'should return 5 2 when get resultado en orden descendente 10' do
      calculadora = CalculadoraDePrimos.new
      calculadora.calcular(10)
      resultado = calculadora.get_resultado_en_orden_descendente
      expect(resultado).to match_array([5, 2])
    end
    it 'should return 5 3 3 2 when get resultado en orden descendente 90' do
      calculadora = CalculadoraDePrimos.new
      calculadora.calcular(90)
      resultado = calculadora.get_resultado_en_orden_ascendente
      expect(resultado).to match_array([5, 3, 3, 2])
    end

  end
end