#player class keeps track correct answers, and lives remaining
class Player 
  
  @@STARTING_LIVES = 3

  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = @@STARTING_LIVES
  end

  def incorrect_answer
    puts "Seriously? No!"
    @lives -= 1
  end

  def correct_answer
    puts "Yes, you are correct!"
  end

  def get_score
    "#{lives}/#{@@STARTING_LIVES}"
  end

  def lost
    lives == 0
  end

end