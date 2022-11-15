class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def score_message
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3 \n --NEW TURN--"
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def winner
    if @player1.lives == 0
    @winner = @player2
    else 
      @winner = @player1
    end
  end

  def end_game
    puts "------GAME OVER------"
    puts "#{@winner} wins with a score of #{@winner.lives}/3"
    puts "------Goodbye!------"
  end

  def play
    while @player1.lives > 0 || @player2.lives > 0 do
    puts "--------NEW TURN--------"
    Question.generate_question(@current_player)
    puts "> "
    input = gets.chomp().to_i
  
    if Question.verify_answer(input)
      puts "#{@current_player}: YES! You are correct."
    else 
      puts "#{@current_player}: Seriously? No!"
      @current_player.lose_life
    end 

    score_message
    switch_player(@current_player)
    
    end
    winner
    end_game
  end


end