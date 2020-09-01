class Show
  attr_reader :name, :creator, :characters

  def initialize(show_name, creator, characters)
    @name = show_name
    @creator = creator
    @characters = characters
  end
end
