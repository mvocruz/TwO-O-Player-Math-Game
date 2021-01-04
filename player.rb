class player

  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def correct
    @score += 1
  end 

  def incorrect
    @lives -= 1
  end

end

  