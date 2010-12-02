	#{|a| a+1}			
				
				Proc.new{|a| a+1}
				
				lambda{|a| a+1}
				
				def convert(&block)
				end																											
				
				convert{puts "---------Inside-------"} #converted into proc object
#Difference between Proc.new and lambda
				
				
def increment(start, inc)
				Proc.new{start +=inc}
end

counter = increment(10,5)
p counter.call
p counter.call

p counter.call
p counter.call
#______________________________________________________________

def gen_times(factor)
    return Proc.new {|n| n*factor }
end
#Proc objects are blocks of code that have been bound to a set of local variables. 
#Once bound, the code may be called in different contexts and still access those variables.

p = Proc.new {|x| puts x.upcase }
%w{ David Black }.each(&p)

#______________________________________________________________

				
class Person
				attr_accessor :name
				def self.to_proc
								Proc.new {|person| person.name}
				end
				
end

p = Person.new
p.name= "Prashant"
a = Person.new
a.name = "Ankur"
puts [p,a].map(&Person)
#     Ruby asks Person to represent itself as a proc, which means an implicit call to Person's to_proc method 

#______________________________________________________
class Symbol
 def to_proc
   Proc.new {|obj| obj.send(self) }
 end
end

puts ["prash", "alo", "jig", "man"].map(&:upcase)
#______________________________________________________
def foo (a, b)
    a.call(b)
end

putser = Proc.new {|x| puts x}
foo(putser, 34)

