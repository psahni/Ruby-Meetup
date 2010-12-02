class String
				def capitalize_each
								replace(self.split(" ").each{
																|w| w.capitalize!
																}.join(" "))
				end
				
end

p "hello world".capitalize_each



