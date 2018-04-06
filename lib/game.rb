class Game

  attr_reader :player1, :player2

  def initialize(p1 = Player.new("Rob"), p2 = Player.new("John"))
    @player1 = p1
    @player2 = p2
  end

  def attack
    @player2.score -= 10
  end

end