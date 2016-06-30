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

#each
a = [0,1,3]
a.each{|array| p array}

5.times{p "hola"}