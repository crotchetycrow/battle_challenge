class Player

  attr_reader :name,
  :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 60
  end

  def attack
    @hitpoints -= 10
  end
end
