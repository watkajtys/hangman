require_relative 'hang_play'

class Hangman
	attr_accessor :chances, :word, :guessed, :board


	def initialize(word)
		@word = word
		@chances = 8
		@guessed = ''
		@board = @word.gsub(/./,'_ ').strip
	end

	def swap_board
		@board = @word.gsub(Regexp.new("[^#{@guessed}]"), '_').gsub(/(.)/, '\1 ').strip
	end

	#alias :board :swap_board #when board called, call swap board

	def guess!(letter)
		return nil if @guessed.include?(letter)
		@guessed += letter
		board_before = @board
		swap_board
		bad_guess = board_before == @board
		@chances -= 1 if bad_guess
		bad_guess
	end

	def won?
		!board.include?("_")
	end

	def lost?
		chances <= 0 
	end

	def game_over?
		won? || lost?
	end

end

class WordList
	@@word_list = File.readlines("/usr/share/dict/words").map(&:strip)

	def self.random_word
		@@word_list.sample
	end
end