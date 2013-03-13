require "test/unit"
require_relative "./hangman.rb"

class HangmanTest < Test::Unit::TestCase

	def setup
		@new_game = Hangman.new
	end

	# def test_accepts_user_input
	# 	# new_game = Hangman.new
	# 	assert_equal true, @new_game.user_prompt.is_a?(String) #test that it is one character
	# 	assert_equal 1, @new_game.user_prompt.length #test that it is a string
	# 	assert_not_equal nil, /[a-z]/.match(@new_game.user_prompt) #test that it includes something from a..z
	# end

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
		assert_equal @new_game.to_dash.include?('_')
	end

  
end