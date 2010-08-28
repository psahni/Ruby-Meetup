class Game
		def initialize(name)
				@name = name
		end
		
end


cricket = Game.new("cricket")

class << cricket
		def one_day
				"50 over game"
		end
end

p cricket.one_day