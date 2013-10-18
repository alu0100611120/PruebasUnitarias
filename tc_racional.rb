# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def setup
		@a = Fraccion.new(1,2)
		@b = Fraccion.new(1,4)
	end

	def test_excepciones
		#Assert para el primer argumento (no Integer)
		assert_raise( ArgumentError ) do
			Fraccion.new( 'a',1 )
		end
		#Assert para el segundo argumento (no Integer)
		assert_raise( ArgumentError ) do
			Fraccion.new( 1,'a')
		end
		#Assert para ambos argumentos (no Integer)
		assert_raise( ArgumentError ) do
			Fraccion.new( 'a','a' )
		end
		#Assert para denominador = cero
		assert_raise( ArgumentError ) do
			Fraccion.new( 2,0 )
		end
	end
	def test_suma
		#Comprobamos la suma con los valores estandar
		result = @a.suma(@b)
		assert result.numerator == 3 and result.dem == 4
		#Comprobamos la suma con numerador 0
		@a.numerator = 0
		result = @a.suma(@b)
		assert result.numerator == 1 and result.dem == 4
	end
	def test_resta
	end
	def test_multiplicacion
	end
	def test_division
	end


end
