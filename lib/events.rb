

class Events

  attr_accessor :event_list

  def initialize
    @event_list = []
  end

  def add_event(event)
    event_list << event
  end

  # A check for any duplicate cordinates
  def coordinate_duplicate_check(x, y)
    event_list.each {|event| puts event.coordinates}
  end

  def generate_random_events
    10.times do |i|
      event.add_event(Event.new(generate_random_coordinate,generate_random_coordinate,i+1))
    end
  end



end
