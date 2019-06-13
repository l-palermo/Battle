class Player
attr_reader :name, :score

  def initialize(name = "player")
    @name = name
    @score = 100
  end 

  def infliction
    @score -= 10
  end
end