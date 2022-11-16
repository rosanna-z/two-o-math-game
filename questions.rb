class Question

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def generate_question(current_player)
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
  end

  def verify_answer(input)
  input == @num1 + @num2
  end

end