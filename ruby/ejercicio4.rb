class Cancion
	attr_writer:nombre
	def initialize (nombre, duracion, artista)
		@nombre = nombre 
		@duracion = duracion
		@artista = artista
	end

	def to_s
		p "Nombre de la cancion #{@nombre} y artista #{@artista}"
	end
end

x = Cancion.new('what now', '360', 'rihanna')
p x.inspect
x.to_s
p x.nombre ='camilo'

class Cancion_cuna < Cancion
	
	def initialize (nombre, duracion, artista, letra)
	super(nombre, duracion, artista)
	@letra = letra
	end
end
x = Cancion_cuna.new('hola', '120', 'alguien', 'algo')
p x.inspect


