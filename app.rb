require './lib/event'
require './lib/events'
require './lib/ticket'

def run_app
  set_up
  user_choice
end

def user_choice
  puts "Please input Coordinates"
end

def set_up
  events = Events.new
  events.random_events(Event)
  events.event_list.each {|event| 5.times do
    event.add_ticket(Ticket)
    end
  }
end

run_app
