#In Ruby every bit of code returns a value

var = class Temporary
											puts "Inside class #{self}"
												def  good
															"Very Good."
												end
												self
								end

p var

d = var.new
p d.good



