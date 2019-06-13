class Player
attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 100
  end 

  def attack(player2)
    player2.infliction
  end

  def infliction
    @score -= 10
  end
end