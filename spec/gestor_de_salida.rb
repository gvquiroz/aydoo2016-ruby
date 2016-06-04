require 'rspec'
require_relative '../model/gestor_de_salida'
class GestorDeSalida
  describe 'GestorDeEntrada' do
    numeros = [2, 3, 4, 5]
    salida = GestorDeSalida.new(numeros)
    salida.imprimeQuiett
    salida.imprimePretty
  end
end