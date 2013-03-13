class Hangman
	attr_accessor :word, :chances

	#This class will run an instance of a hangman game. 
	#Only concerned with one run of the game. 
	#Not responsible for human interaction
	#Shoudln't expect anything other than the hangman rules

	def initialize(word)
		@word = word
		@board = '_ _ _ _ _'
	end

	def guess(letter)
	end

	def won?
		#true or falase
	end

end







=begin 
This is my code

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

=end