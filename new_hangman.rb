class Hangman
	attr_accessor :chances, :word, :board, :guessed

	def initialize(word)
		@word = word
		@chances = 8
		@guessed = []
	end

	def board
		('_ ' * (word.length)).strip
	end

	def guess!(letter)
	end

	def won?
	end

end
