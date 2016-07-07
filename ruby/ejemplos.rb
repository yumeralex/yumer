 a = /ruby|phyton|hola/
 x = "ruby"

 #if x = a 
 #	p "por lo menos tiene uno"
 #else 
 #	p "no tiene nada"
 #end 

 # yield es un llamado al bloque donde está 

#def sumar (x,y)
	#@z= x+y 
	#yield
#end
#sumar {p"la suma fue #{z}"}
#d = sumar.new ("5,6")

#each recorrer array 
a = [0,1,3]
a.each{|array| p array}

5.times{p "hola"}

# llamar nombre  Cancion
class Cancion
	attr_reader:nombre
	def initialize (nombre, duracion, artista)
		@nombre = nombre 
		@duracion = duracion
		@artista = artista
	end

	def to_s
		p "Nombre de la cancion #{@nombre} y artista #{@artista}"
	end
	def New_name=(z)
		@nombre = z
	end
end

x = Cancion.new('what now', '360', 'rihanna')
p x.nombre
p x.inspect
x.to_s
x.New_name ='camilo'
p x.nombre

# combinar atributos 
class Cancion
	def initialize (nombre, duracion, artista)
		@nombre = nombre 
		@duracion = duracion
		@artista = artista
	end

	def Titulo_artista
		"#{@nombre}-#{@artista}"
	end
end
x.Titulo_artista
