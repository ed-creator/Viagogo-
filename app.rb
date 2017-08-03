require './lib/event'
require './lib/events'
require './lib/ticket'

def run_app
  events = set_up
  user_coordinates = user_choice
  top_five = events.closest_events(user_coordinates)
  top_five.each {|event| puts event.id.to_s + event.coordinates.to_s + event.cheapest_ticket.price.to_s}

end

def user_choice
  puts "Please input Coordinates"
  coordinates = gets.chomp.gsub(/[^\d]/, '')
  user_coordinates = coordinates.scan /\w/
  user_coordinates.map! {|x| x.to_i}
  return user_coordinates
end

def set_up
  events = Events.new
  events.random_events(Event)
  events.event_list.each {|event| 5.times do
    event.add_ticket(Ticket)
    end
  }
  return events
end



run_app
