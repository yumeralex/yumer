class Carro

	def initialize(modelo, marca, color)
		@modelo = modelo
		@marca = marca
		@color = color
	end
	
	def encender
		p "carro encendido"
		yield
		yield
		yield
	end


	def apagar
		p "carro apagado"
	end

	def atributos
		p "el carro es modelo #{@modelo}, marca #{@marca} y de color #{@color}"
	end
end
 
 d = Carro.new('2016', 'Ford', 'Gris')

 puts " la id del objeto es #{d.object_id}"

d.encender { puts"correcto"}
d.apagar
d.atributos