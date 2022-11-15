class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def output_message
    puts "P1: #{} vs P2: #{} \n ---NEW TURN---"
  end

  def play 
    
  end

end