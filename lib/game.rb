require './lib/player.rb'

class Game
  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 0
  end

  def attack
    if @turn.even?
    @player2.infliction
    elsif @turn.odd?
    @player1.infliction
    end
    turn_switcher
  end
  
  def turn_switcher
    @turn += 1
  end
end