class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500000 && character.name.upcase == character.name
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    actors_hash = {}
    @shows.each do |show|
      actors_hash.store(show, show.characters)
    end
    actors_hash
  end

end
