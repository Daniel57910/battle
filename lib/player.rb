class Player

  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @score = 100
    @name = name
  end

  def add_name(name)
    @name = name
  end
  
end