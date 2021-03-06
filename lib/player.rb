class Player
  DEFAULT_HEALTH_POINTS = 60
  attr_reader :name, :health_points

  def initialize(name, health_points=DEFAULT_HEALTH_POINTS)
    @name = name
    @health_points = health_points
  end

  def attack(player)
    player.takes_damage
  end

  def takes_damage
    @health_points -= 10
  end

end
