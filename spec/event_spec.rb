require 'event'

describe Event do

  subject(:card) {described_class.new(1,2,1)}
  describe '#initialize' do
    it 'checks events are made outside the given cordinates (-10..10) fail' do
      expect{described_class.new(-11,1,2)}.to raise_error("cordinates must be within range")
    end
    it 'checks events within the given cordinates (-10..10) pass' do
      expect(subject.coordinates).to eq [1,2]
    end
  end
end
