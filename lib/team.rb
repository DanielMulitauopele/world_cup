class Team
  attr_reader :country, :players

  def initialize(country)
    @country = country
    @players = {}
    @eliminated = false
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    key = player.position
    value = player.name
    @players[key] = value
  end

  def players_by_position(position)
    @players[position]
  end

  def eliminated
    @eliminated = true
  end
end
