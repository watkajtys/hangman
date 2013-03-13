require "test/unit"
require_relative "./new_hangman.rb"


class HangmanTest < Test::Unit::TestCase

	def test_initialize_starts_with_eight_chances
		h = Hangman.new("this")
		assert_equal 8, h.chances
	end

	def test_initialize_starts_with_an_empty_board
		h = Hangman.new("five")
		assert_equal "_ _ _ _", h.board
	end

	def test_initiailize_accepts_and_uses_a_word
		word = "contact"
		h = Hangman.new(word)
		assert_equal word, h.word
	end

	def test_initialize_starts_with_no_guesses
	end

	def test_game_end_when_player_enter_final_letter
	end
end