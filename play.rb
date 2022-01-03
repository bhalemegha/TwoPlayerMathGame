require "pp"
class Math_game
  def self.generateNumber()
    rand(1..20)
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0];
  end

  attr_accessor :current_player

  def switch_player
    if(@current_player == @players[0])
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
  
  def play_game(num1, num2)
    puts "What does #{num1} plus #{num2} equal?"
    answer = gets.chomp
    answer.to_i
  end

  def update_attempt(answer, num1, num2)
    res = num1 + num2
    pp "player is #{@current_player}"
    unless(res == answer)
      @current_player.update_attempt()
    end
    @current_player.attempt
  end
end