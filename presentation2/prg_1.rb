#_______________________________________________________________

 File.open(filename) do |file|
	...read from file...
 end
 # the file has been closed

#_______________________________________________________________
Iteration:

 collection.each do |element|
	...process element of collection...
 end

#_______________________________________________________________

Thread.new do
	...this block runs in another thread...
 end
 
#_______________________________________________________________

my_array.sort {|x,y| y <=> x }  # sorts an array in reverse order


my_array.sort_by { |x| x.someproperty }


[1, 3, 5, 7, 9].find {|v| v*v > 30 }
#_______________________________________________________________