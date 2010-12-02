class Fixnum
				def factorial
								(1..self).inject{	|a, b| 
								a*b }
				end
				
end

p rand(6).factorial

p 9.factorial