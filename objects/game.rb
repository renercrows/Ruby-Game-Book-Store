require_relative '../item'

class Game < Item
  attr_accessor :name, :developer, :multiplayer, :last_played_at, :publish_date

  def initialize(name, developer, multiplayer, last_played_at, publish_date)
    super()
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @name = name
    @developer = developer
    @publish_date = publish_date
  end

  def can_be_archived?
    Time.new.year - last_played_at > 2 || super
  end
end
