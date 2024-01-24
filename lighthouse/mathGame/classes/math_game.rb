class MathGame

  def initialize
    @player1 = Player.new('Player 1', 3, 2)
    @player2 = Player.new('Player 2', 3, 1)
    @calc = Calculation.new
  end


  def begin

    while(players_have_lives_left)

      player = @player1.turn.even? ? @player1 : @player2
      print "#{player.name}:"
      @calc.ask_question
      print "#{player.name}:"

      if(!@calc.answer)
        player.lives_left
      end

      @player1.turns
      score
      
    end

    puts "----- GAME OVER -----"
    game_over

  end

  def score
    if(players_have_lives_left)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
    end
  end

  def game_over 
    winner = determine_winner
      return puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end

  def determine_winner
    return @player2 if @player1.lives == 0
    return @player1 if @player2.lives == 0
  end

  def players_have_lives_left
    return @player1.lives > 0 && @player2.lives > 0
  end

end