class Show
  attr_reader :name, :creator, :characters

  def initialize(show_name, creator, characters)
    @name = show_name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end

end
