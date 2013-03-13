require_relative "new_hangman"

class PlayerUI
end

def show_round
	puts "Your secret word is #{game.word}"
	puts ""
	puts "Board: #{game.board}"
	puts ""
	puts "Chances: #{game.chances}"
	puts ""
	puts "Enter Guess:"
	letter = gets.chomp

	puts "The letter is: #{letter}"
end

game = Hangman.new("lemon")

show_round