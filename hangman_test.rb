require "test/unit"
require_relative "./hangman.rb"

class HangmanTest < Test::Unit::TestCase


	def test_initialize_starts_with_eight_chances
		h = Hangman.new("this")
		assert_equal 8, h.chances
	end

	def test_initialize_has_an_empty_board_of_the_right_size
		h = Hangman.new('hello')
		assert_equal "_ _ _ _ _", h.board

		h = Hangman.new('hello!!!')
		assert_equal "_ _ _ _ _ _ _ _", h.board
	end

	def test_initialize_starts_with_no_guesses
	end

	def test_initialize_accepts_and_uses_the_word
		word = "hello"
		h = Hangman.new(word)
		assert_equal word, h.word #Hangman.word
	end


	def test_game_ends_when_last_letter_is_guessed_correctly
		word = "hello"
		board = "h e l l _"
		guess = 'o'
		h = Hangman.new(word)
		h.board = board
		#DONE WITH SETUP
		# insert o,  game ends, and player wins! 
		h.guess!(guess) 
		assert h.won?
	end
end


=begin
	#Helps you think about it in an API way. 


	# def test_accepts_user_input
	# 	# new_game = Hangman.new
	# 	assert_equal true, @new_game.user_prompt.is_a?(String) #test that it is one character
	# 	assert_equal 1, @new_game.user_prompt.length #test that it is a string
	# 	assert_not_equal nil, /[a-z]/.match(@new_game.user_prompt) #test that it includes something from a..z
	# end
	my tests are below

	def test_initialize_sets_random_word
		assert_not_nil @new_game.word
		assert @new_game.dictionary.include?(@new_game.word)
	end

	def test_to_letters_is_array
		assert Array @new_game.to_letters.class
		assert_not_nil @new_game.letters
	end

	def test_is_replacing_letters_with_dash
		assert Array @new_game.letters.class
		# assert_equal @new_game.to_dash.include?('_')
	end
=end