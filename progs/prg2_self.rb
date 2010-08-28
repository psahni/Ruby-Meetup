class Fool
				def meth_1
							@var = 99
								meth_2 #Self is the default receiver 
				end
				
				def meth_2
								puts "The value of var is #{@var}."
				end
				
end

s = Fool.new
p s.meth_1