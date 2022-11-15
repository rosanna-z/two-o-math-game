class Question

  def generate_question(current_player)
    @num1 = rand(20)
    @num2 = rand(20)
    puts "#{@current_player}: What does #{@num1} plus #{@num2} equal?"
  end

  def verify_answer(input)
    answer == @num1 + @num2
  end

end