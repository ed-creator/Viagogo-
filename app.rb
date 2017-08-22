require './lib/event'
require './lib/events'
require './lib/ticket'

def set_up
  events = Events.new
  events.random_events(Event)
  events.event_list.each {|event| 5.times do
    event.add_ticket(Ticket)
  end
}
return events
end

def user_choice
  puts "Please input Coordinates"
  coordinates = gets.chomp.split(',')
  user_coordinates = coordinates.map{|c| c.to_i}
  user_coordinates.map! {|x| x.to_i}
  return user_coordinates
end

def top_five_output(events, user_coordinates)
  top_five = events.closest_events(user_coordinates)
  return top_five.each {|event| puts "Event Number: " + event.id.to_s + " " +
                 event.cheapest_ticket.ticket_price + ", Distance: " +
                 event.manhatten_distance(user_coordinates).to_s +
                 " at coordinates " + event.coordinates.to_s}
end

def run_app
  events = set_up
  user_coordinates = user_choice
  top_five_output(events, user_coordinates)
end

run_app
