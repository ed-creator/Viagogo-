class Event

  attr_reader :coordinates, :id

  def initialize(x, y, id)
    raise ("cordinates must be within range") if 10 > y && y < -10
    raise ("cordinates must be within range") if 10 > x && x < -10
    @coordinates = [x,y]
    @id = id
    @tickets = []
  end

  # def self.all
  #   ObjectSpace.each_object(self).to_a
  # end




end
