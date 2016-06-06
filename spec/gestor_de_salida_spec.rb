require 'rspec'
require_relative '../model/gestor_de_salida'
class GestorDeSalidaSpec
  describe 'GestorDeEntrada' do
    numeros = [2, 3, 4, 5]
    salida = GestorDeSalidaSpec.new(numeros)
    salida.imprimeQuiett
    salida.imprimePretty
  end
end