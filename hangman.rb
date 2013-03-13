class Hangman
	attr_accessor :word, :dictionary, :letters

  def initialize()
    puts "Hangman game!"
  	@dictionary = ["ruby", "rails", "monk"]
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
  	letters.map{|letter| letter.gsub(/[a-z]/, '_')}
  end
  
end
