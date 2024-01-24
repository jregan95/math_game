class Player
  attr_accessor :name, :lives, :turn

  def initialize(name, lives, turn)
    @name = name
    @lives = lives
    @turn = turn
  end

  def lives_left
    @lives -= 1 
  end

  def turns 
    @turn += 1
  end

end
