class Questions

  def generate_question
    @num1 = rand(20)
    @num2 = rand(20)
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def verify_answer()
    @answer = gets.chomp.to_i

    if @answer == @num1 + @num2
      puts "#{current_player}: YES! You are correct."
      output_message
    else 
      puts "#{current_player}: Seriously? No!"
      lose_life
    end 

  end

end