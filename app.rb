require './lib/event'
require './lib/events'
require './lib/ticket'

def run_app
  events = set_up
  user_coordinates = user_choice
  user_coordinates
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
