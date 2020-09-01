class Character
  def initialize(character_hash)
    @character_hash = character_hash
  end

  def name
    @character_hash[:name]
  end
end
