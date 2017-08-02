require 'event'

describe Event do


  subject(:event) {described_class.new(1,1,1)}
  describe '#initialize' do

    it 'checks events are made outside the given cordinates (-10..10) fail' do
      expect{described_class.new(2,-11,)}.to raise_error("cordinates must be within range")
    end
    it 'checks events within the given cordinates (-10..10) pass' do
      expect(event.coordinates).to eq [1,1]
    end
  end

  describe '#add_ticket' do
    it 'adds a new ticket to the event' do
      event.add_ticket(Ticket)
      expect(event.tickets.count).to eq 1
    end
  end
end
