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

  def shows_by_actor
    shows_hash = {}
    @shows.each do |show|
      show.actors.each do |actor|
        if shows_hash.has_key?(actor)
          shows_hash[actor] << show
        else
          shows_hash.store(actor, [show])
        end
      end
    end
    shows_hash
  end

  def prolific_actors
    actor_array = []
    shows_by_actor.each do |actor, show|
      if show.length >= 2
        actor_array << actor
      end
    end
    actor_array
  end

end
