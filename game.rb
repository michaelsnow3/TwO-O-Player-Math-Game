require('./player.rb')
require('./question.rb')

#game class, keeps track of players turn, player input and output messages and loop while players have lives
class Game
  
  def initialize
    @player1 = Player.new('player 1')
    @player2 = Player.new('player 2')
    @current_question = Question.new
    @current_player = @player1
  end

  def start_game
    puts "==== GAME BEGINS! ===="
    
    until @player1.lost || @player2.lost
      #start of turn
      puts "==== NEW TURN ===="

      #generate question and aquire user response
      @current_question.generate_question
      puts "#{@current_player.name}: #{@current_question.question}"
      user_input = gets.chomp

      #check if users answer is correct and call incorrect method if wrong
      if @current_question.is_correct?(user_input)
        @current_player.correct_answer
      else
        @current_player.incorrect_answer
      end

      puts "P1:#{@player1.get_score} vs P2:#{@player2.get_score}"

      switch_current_player

    end

    end_of_game

  end
  

  #switch which players turn it is
  def switch_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def end_of_game
    puts "#{@current_player.name} wins with a score of #{@current_player.get_score}"
    puts "==== GAME OVER ===="
  end

end