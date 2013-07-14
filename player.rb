# encoding: utf-8

class Player
	attr_accessor :name, :player_id

	def initialize(name, player_id)
		@name = name
		@player_id = player_id
	end

	def move
		move_seq = []
		puts 
		puts
		puts "#{@name}, #{@player_id}, please enter a starting piece's coordinates"
		move = gets.chomp
		move_seq << parse_input(move)
		
		puts 
		puts "Enter the coordinates of the next space to move to."
		puts "Hit 'Enter' after every move you want to make"
		puts "When you are finished moving, hit 'Enter' on a blank line." 
		while true
			move = gets.chomp
			break if move == ""
			move_seq << parse_input(move)
		end
		move_seq
	end

	def try_again
		puts "That wasn't a valid move! Please try again"
		self.move
	end

	def parse_input(move)
		move = move.split("")
		move.map! { |coord| converter(coord) }
		p move
		[move[1],move[0]]
	end

	def converter(loc)
    case loc.downcase
      when "a" then 0
      when "b" then 1
      when "c" then 2
      when "d" then 3
      when "e" then 4
      when "f" then 5
      when "g" then 6
      when "h" then 7
      when "8" then 0
      when "7" then 1
      when "6" then 2
      when "5" then 3
      when "4" then 4
      when "3" then 5
      when "2" then 6
      when "1" then 7
      else 10
    end
  end


end