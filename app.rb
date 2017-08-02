require './lib/event'
require './lib/events'

@events = Events.new
@events.random_events(Event)
