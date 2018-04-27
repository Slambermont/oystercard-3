require 'journeylog'

describe JourneyLog do
  let(:journey) { double :journey }
  let(:journey_class) { double :journey_class, new: journey }
  let(:entry_station) { double :entry_station }
  let(:exit_station) { double :exit_station }
  subject { described_class.new(journey_class: journey_class) }
  describe '#start' do
    it 'starts a journey' do
      expect(journey_class).to receive(:new).with(entry_station: entry_station)
      subject.start(entry_station)
    end
  end
end
