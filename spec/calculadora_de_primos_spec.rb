require 'rspec'
require_relative '../model/calculadora_de_primos'
class CalculadoraDePrimosSpec
  describe 'CalculadoraDePrimos' do

    it 'should return 2 2 3 5 when calcular 60' do
      expected_array = [2, 2, 3, 5]
      calculadora = CalculadoraDePrimos.new
      expect(calculadora.calcular(60)).to match_array(expected_array)
    end

    it 'should return 2 3 3 5 when calcular 90' do
      calculadora = CalculadoraDePrimos.new
      expect(calculadora.calcular(90)).to match_array([2, 3, 3, 5])
    end

    it 'should return 2 5 when calcular 10' do
      calculadora = CalculadoraDePrimos.new
      expect(calculadora.calcular(10)).to match_array([2, 5])
    end

  end
end