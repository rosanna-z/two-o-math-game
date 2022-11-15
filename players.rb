class Player

  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @newlives = @lives - 1
  end

end