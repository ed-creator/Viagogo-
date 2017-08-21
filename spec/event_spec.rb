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

  describe '#cheapest_ticket' do
    it 'returns the cheapest ticket' do
      ticket1 = Ticket.new(1,1)
      event.tickets << ticket1
      ticket2 = Ticket.new(2,1)
      event.tickets << ticket2
      expect(event.cheapest_ticket).to eq ticket1
    end
    it 'returns the cheapest ticket (different order)' do
      ticket1 = Ticket.new(2,1)
      event.tickets << ticket1
      ticket2 = Ticket.new(1,1)
      event.tickets << ticket2
      expect(event.cheapest_ticket).to eq ticket2
    end
  end

  describe '#manhatten_distance' do
    it 'correctly calculates a manhatten distance of 0' do
      expect(event.manhatten_distance([1,1])).to eq 0
    end
    it 'correctly calculates a manhatten distance of 2' do
      expect(event.manhatten_distance([0,0])).to eq 2
    end
    it 'correctly calculates a manhatten distance of 8' do
      expect(event.manhatten_distance([-3,-3])).to eq 8
    end
    it 'correctly calculates a manhatten distance of 10' do
      expect(event.manhatten_distance([5,7])).to eq 10
    end
    it 'correctly calculates a manhatten distance of 5' do
      expect(event.manhatten_distance([-3,2])).to eq 5
    end
  end
end
