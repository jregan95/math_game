class Calculation
  attr_accessor :num1, :num2, :guess

  def answer  
    if(@guess == @sum)
      puts "Nice! You are right!"
      return true
    end
      puts "SOOOO WRONG"
      return false
  end

  def ask_question
    @num1 = rand(21)
    @num2 = rand(21)
    puts " What is #{@num1} plus #{@num2}"
    @sum = @num1 + @num2
    @guess = gets.chomp.to_i
    
  end

end