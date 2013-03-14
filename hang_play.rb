require_relative "new_hangman"

class HangPlay

	def self.start
		@@game = Hangman.new(WordList.random_word)
		until @@game.game_over?
			self.show_round
		end
		puts "Your word was #{@@game.word}"
		puts "Game Over - You #{@@game.won? ? 'won!' : 'lost :('}"
	end

	def self.show_round 
		puts ""
		puts "Board: #{@@game.board}"
		puts ""
		puts "Chances: #{@@game.chances}"
		puts ""
		puts "Enter Guess:"
		letter = gets.chomp

		puts "The letter is: #{letter}"
		if @@game.guess!(letter).nil?
			puts "You already guessed #{letter}!"
		end
	end

end