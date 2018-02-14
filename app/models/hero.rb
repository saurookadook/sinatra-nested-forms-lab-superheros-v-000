class Hero
  attr_accessor :name, :power, :bio

  HEROES = []

  def initialize(info_hash)
  end

  def self.all
    HEROES
  end
end
