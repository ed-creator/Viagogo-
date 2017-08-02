require './lib/event'
require './lib/events'
event = Events.new

# get a random number between -10 & 10
def generate_random_coordinate
  return rand(20) - 10
end

# get 10 randomly generated events
def generate_random_events
  10.times do |i|
    event.add_event(Event.new(generate_random_coordinate,generate_random_coordinate,i+1))
  end
end

generate_random_events
