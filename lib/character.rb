class Character
  def initialize(character_hash)
    @character_hash = character_hash
  end

  def name
    @character_hash[:name]
  end

  def actor
    @character_hash[:actor]
  end

  def salary
    @character_hash[:salary]
  end
end
