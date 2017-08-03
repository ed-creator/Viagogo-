class Event

  attr_reader :coordinates, :id, :tickets

  def initialize(id, x=random_coordinate, y=random_coordinate)
    raise ("cordinates must be within range") if 10 > y && y < -10
    raise ("cordinates must be within range") if 10 > x && x < -10
    @coordinates = [x,y]
    @id = id
    @tickets = []
  end

  def add_ticket(ticket)
    tickets << ticket.new(id)
  end

  def cheapest_ticket
    tickets_by_price = tickets.sort_by {|ticket| ticket.price }
    return tickets_by_price[0]
  end

  # coordinates entered as [x,y]
  def manhatten_distance(base_coordinates)
    x1 = base_coordinates[0] + 10
    x2 = coordinates[0] + 10
    y1 = base_coordinates[1] + 10
    y2 = coordinates[1] + 10
    return (x1 - x2).abs + (y1 - y2).abs
  end

  private

  def random_coordinate
    return rand(20) - 10
  end

end
