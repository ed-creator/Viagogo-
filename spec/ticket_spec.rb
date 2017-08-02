require 'ticket'

describe Ticket do

    subject(:ticket) {described_class.new(10,1)}
    describe '#initialize' do

      it 'creates a valid ticket' do
        expect(ticket.event_id).to eq 1
        expect(ticket.price).to eq 10
      end
    end
end
