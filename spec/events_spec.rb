require 'events'

describe Events do

  subject {described_class.new}
  let(:event1) {double :event1, coordinates: [1,1]}
  let(:event2) {double :event2, coordinates: [1,2]}
  let(:event3) {double :event3, coordinates: [1,1]}

  describe '#initialize' do
    it 'starts with an empth event array' do
      expect(subject.event_list).to eq []
    end
  end

  describe '#add_event' do
    it 'can add a single event' do
      subject.add_event(event1)
      expect(subject.event_list).to eq [event1]
    end
    it 'can add multiple events' do
      subject.add_event(event1)
      subject.add_event(event2)
      expect(subject.event_list).to eq [event1, event2]
    end
    it 'fails when multiple events with the same coordinates are added' do
      subject.add_event(event1)
      subject.add_event(event3)
      expect(subject.event_list).to eq [event1]
    end
  end

  describe '#random_events' do
    it'can add in a set of random objects to event_list' do
      subject.random_events(Event)
      expect(subject.event_list).not_to be_empty
    end
  end
end
