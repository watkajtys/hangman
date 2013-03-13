class Hangman
	attr_accessor :word, :dictionary, :letters

  def initialize()
    puts "Hangman game!"
  	@dictionary = ["Ruby", "Rails", "Monk"]
  	@word = @dictionary.sample
  end

  # def get_dictionary
  	
  # end

  def user_prompt
  	puts "Please Enter a Guess"
  	guess = gets.chomp.downcase
  end

  def to_letters
  	@letters = word.split('')
  end

  def to_dash
  	letters.map{|letter| letter.gsub(/[a-z]/, '')}
  end
  
end
