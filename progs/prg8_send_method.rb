
class Test
				
 
 private
 
 def check
  puts "Inside Private method"
 end
 
end

t =  Test.new
p t.send :check
#~ t.instance_eval{ 
								#~ check 
				#~ }