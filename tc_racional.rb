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
		#Comprobamos la resta con los valores estandar
                result = @a.resta(@b)
                assert result.numerator == 1 and result.dem == 4
                #Comprobamos la resta con numerador 0
                @b.numerator = 0
                result = @a.resta(@b)
                assert result.numerator == 1 and result.dem == 2

	end
	def test_producto
                #Comprobamos el producto con los valores estandar
                result = @a.producto(@b)
                assert result.numerator == 1 and result.dem == 8
                #Comprobamos el producto con numerador 0
                @a.numerator = 0
                result = @a.producto(@b)
                assert result.numerator == 0 and result.dem == 8

	end
	def test_division
		#Comprobamos la division con los valores estandar
                result = @a.division(@b)
                assert result.numerator == 2 and result.dem == 1
		#Comprobamos la division con numerador 0
		@a.numerator = 0
		result = @a.division(@b)
		assert result.numerator == 0 and result.dem == 2

	end


end
