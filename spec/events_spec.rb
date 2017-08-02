require 'events'

describe Events do

  subject(:card) {described_class.new}
  let(:event1) {:event1}
  let(:event2) {:event2}

  describe '#initialize' do
    it 'starts with an empth event array' do
      expect(subject.event_list).to eq []
    end
  describe '#add_event' do
    it 'can add a single event' do
      subject.add_event(event1)
      expect(subject.event_list).to eq [event1]
    end
    it 'can add multiple evens' do
      subject.add_event(event1)
      subject.add_event(event2)
      expect(subject.event_list).to eq [event1, event2]
    end
  end

  end
end
