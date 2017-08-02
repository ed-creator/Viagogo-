require 'events.rb'

describe Event do

  subject(:card) {described_class.new("test", 1,2,1)}
  describe '#initialize' do
    it 'checks events are made outside the given cordinates (-10..10) fail' do
      expect{described_class.new("test", -11,1,2)}.to raise_error("cordinates must be within range")
    end
    it 'checks events within the given cordinates (-10..10) pass' do
      expect(subject.x_cordinate).to eq 1
      expect(subject.y_cordinate).to eq 2
    end
  end
end
