require "test/unit"
require_relative "new_hangman"


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
		word = "word"
		h = Hangman.new(word)
		assert_equal '', h.guessed
	end

	def test_letter_is_accepted
	end

	def test_game_end_when_player_enter_final_letter
		word = "hello"
		board = "h e l l _"
		guess = 'o'
		h = Hangman.new(word)
		h.board = board
		h.guess!(guess)
		assert h.won?
	end

	def test_swap_board_
		word = 'feet'
		board = '_ _ _ _'
		guess = 'e'
		h = Hangman.new(word)
		h.guess!(guess)
		assert_equal '_ e e _', h.swap_board

		#already guessed
		#not in board
		#in board with some letters
	end
end