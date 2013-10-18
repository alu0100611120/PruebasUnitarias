# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_accessor :numerator
	attr_accessor :dem

	def inicialize (numerador, denominador) #Constructor de Fraccion
		@numerator = numerador/gcd(numerador, denominador)
		@dem = denominador/gcd(numerador, denominador)
	end

	def to_s #Devuelve la fracción convertida a string
		return "#@numerator / #@dem"		
	end

	def suma(ob) #Devuelve un nuevo obj con el resultado de la suma
		return Fraccion.new((@numerator * ob.dem) + (ob.numerator * @dem) , (@dem * ob.dem))
	end

	def resta(ob) #Devuelve un nuevo obj con el resultado de la resta
		return Fraccion.new((@numerator * ob.dem) - (ob.numerator * @dem) , (@dem * ob.dem))
	end

	def producto(ob) #Devuelve un nuevo obj con el resultado del producto
		return Fraccion.new((@numerator * ob.numerator) , (@dem * ob.dem))
	end

	def division(ob) #Devuelve un nuevo obj con el resultado de la division
		return Fraccion.new((@numerator * ob.dem) , (@dem * ob.numerator))
	end

end
