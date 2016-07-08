class Suma 
	def initialize (numero1, numero2)
		@numero1 = numero1
		@numero2 = numero2
	end

	def suma 
		p "#{@numero1 + @numero2}"
	end 
	
	def resta
		p "#{@numero1 - @numero2}"
	end

	def multi
		p "#{@numero1 * @numero2}"
	end

	def div
		p "#{@numero1 / @numero2}".to_f
	end
end

x = Suma.new(5,4)

x.suma
x.resta
x.multi
x.div
