module With
 def pattr_accessor(*arg)
				
				self.class_eval{
								define_method "#{arg}" do
												instance_variable_get("@#{arg}")
								end 
								define_method "#{arg}=" do |val|
												instance_variable_set("@#{arg}", val)
								end
								
				}
 end
 
end


class Test
				extend With
				pattr_accessor :name, db
				
end
t = Test.new
t.name = "John"
p t.name