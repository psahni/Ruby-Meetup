
#_______________________________________________________

def make_a_change(&block)
				#block.call(true) #or yield true
				yield true
end

make_a_change do |result|
				p result
				if result
								print "You have done your job" 
				else
								print "You have do it again"
				end
end
#_______________________________________________________


    x = 1200  
    puts "Before the loop, x = #{x}"  
      
    3.times do |y,x|  
      puts "Looping #{y}"  
      x = y  
    end  
   
    puts "After the loop, x = #{x}"  



#_______________________________________________________

def infinite
				while true
								yield 
				end
end

#infinite{puts "Hiiiiiiiiiiiiiii"}

#_______________________________________________________

p "*"*10
def magic(&b)
return b
end


magic{|x| x}

my_proc = lambda{|x| x}

magic &my_proc


#________________________________________________________

class Array
  def reverse_iterate
    current_index = self.size-1
    while current_index >= 0
      yield self[current_index]
      current_index -= 1
    end
  end
end

[2,4,6,8].reverse_iterate { |i| print "#{i} "}

#________________________________________________________


class Array
	def reverse_iterate
		current_index = self.size - 1
		while( current_index >= 0 )
																 #others[0],others[1], others[2]
			yield self[current_index], "Value", current_index, "Index"
			current_index-=1
		end
	end
end

#________________________________________________________

[2,3,12,31,21].reverse_iterate do |value, *others|
	puts "\n#{others[0]} = #{value}, #{others[2]} = #{others[1]}"
end

class Array
	def stylish_names(&block)
		 i = 0
		 curr_size = self.size
		 while i < curr_size
			yield("<span> " + self[i] + " </span>")	
		  i+=1 
		 end
	end
end

["Amit", "Prashant", "Alok", "Anand", "Jitendra"].stylish_names do |name|
	print "\n", name
end
#_________________________________________________________