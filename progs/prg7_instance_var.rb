class Foo

				def initialize(p1, p2)
								@a1 = p1
								@a2 = p2
				end
				
end

f = Foo.new("cat", 32)
p f.instance_variable_get(:@a1)
p f.instance_variable_get(:@a2)
f.instance_variable_set(:@a1, "strrrr")
p f.instance_variable_get(:@a1)
p f.inspect
