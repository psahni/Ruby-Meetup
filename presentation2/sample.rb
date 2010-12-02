
	 #~ def try
					 #~ p = lambda{ |x| p x*x;return}
					 #~ puts "Before"
					 #~ p.call(2)
					 #~ puts "After"
	 #~ end
	 #~ try
	 
	 #~ l= Proc.new{|a,*b| p b}
	 #~ p l.call(1,2,3)
	 
	 #~ def gen_times(factor)
    #~ return Proc.new {|n| n*factor }
  #~ end
	
	#~ times6 = gen_times(6)
	#~ times6 = gen_times(6)
	#~ p times6.call(3)
	#~ p times6.call(10)
	#~ times5 = gen_times(5)
	
	#~ def counter(x)
					#~ n = 0
				 #~ return Proc.new{n+=x}
 #~ end
 #~ counter(1)
 #~ counter(1).call
 #~ counter(1).call
 
 def increment(start, inc)
				Proc.new{start +=inc}
end

counter = increment(10,5)
p counter.call
p counter.call

p counter.call

p counter.call
 
 
	
	
	 
	 
	
	