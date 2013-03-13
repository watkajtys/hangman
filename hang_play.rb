require_relative "new_hangman"

class HangPlay

	def self.start
		@@game = Hangman.new('lemon')
		until @@game.game_over?
			self.show_round
		end
	end

	def self.show_round
		puts "Your secret word is #{@@game.word}"
		puts ""
		puts "Board: #{@@game.board}"
		puts ""
		puts "Chances: #{@@game.chances}"
		puts ""
		puts "Enter Guess:"
		letter = gets.chomp

		puts "The letter is: #{letter}"
	end

end