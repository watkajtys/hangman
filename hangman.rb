class Hangman

  def initialize()
    puts "Hangman game!"
  	@dictionary = ["Ruby", "Rails", "Monk"]
  end

  # def get_dictionary
  	
  # end

  def select_random_word
  	n = rand(@dictionary.length)
  	@word = @dictionary[n]
  end

  def user_prompt
  	puts "Please Enter a Guess"
  	guess = gets.chomp.downcase
  end

  def to_letters
  	@word.split('')
  end
  
end
