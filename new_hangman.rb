class Hangman
	attr_accessor :chances, :word

	def initialize(word)
		@word = word
		@chances = 8
	end

	def board
		@board = (word.length)
	end

end
