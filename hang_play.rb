require_relative "new_hangman"

class HangPlay

	def self.start
		@@game = Hangman.new('lemon')
		self.show_round
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