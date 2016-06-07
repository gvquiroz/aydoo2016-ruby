require 'rspec'
require_relative '../model/gestor_de_salida'
class GestorDeSalidaSpec
  describe 'GestorDeSalida' do
    it 'should imprimir por pantalla when imprimir por pantalla' do
      contenido_de_prueba = "mi contenido de prueba"
      gestor_de_salida = GestorDeSalida.new(contenido_de_prueba)

      expect { gestor_de_salida.imprimir_por_pantalla }.to output("mi contenido de prueba\n").to_stdout
    end
  end
end