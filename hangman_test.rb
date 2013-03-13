require "test/unit"
require_relative "./hangman.rb"

class HangmanTest < Test::Unit::TestCase

	def setup
		@new_game = Hangman.new
	end


	def test_word_is_a_string
		# new_game = Hangman.new
		# new_game.select_random_word
		# dictionary = ["Ruby", "Rails", "Monk"]
		# word = hangman.select_random_word
		# in_dictionary = dictionary.include?(word)
		assert_equal String, @new_game.select_random_word.class     #in_dictionary
	end

	# def test_word_is_in_dictionary
	# 	assert_equal true, Hangman.new.include?("Ruby")
	# end

	# def test_accepts_user_input
	# 	# new_game = Hangman.new
	# 	assert_equal true, @new_game.user_prompt.is_a?(String) #test that it is one character
	# 	assert_equal 1, @new_game.user_prompt.length #test that it is a string
	# 	assert_not_equal nil, /[a-z]/.match(@new_game.user_prompt) #test that it includes something from a..z
	# end

	def test_breaks_chosen_word_into_array
		assert_equal Array, @new_game.to_letters.class #test that word becomes broken array
	end
  
end