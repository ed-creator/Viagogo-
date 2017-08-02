class Event

  attr_reader :name, :x_cordinate, :y_cordinate, :id

  def initialize(name, x, y, id)
    raise ("cordinates must be within range") if 10 > y && y < -10
    raise ("cordinates must be within range") if 10 > x && x < -10
    @name = name
    @x_cordinate = x
    @y_cordinate = y
    @id = id
    @tickets = []
  end

end
