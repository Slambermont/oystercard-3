require_relative 'journey'


class JourneyLog

  attr_reader :journeys

  def initialize(journey_class = Journey)
    @journey_class = journey_class
    @journeys = []
  end

  def start(entry_station)
    @current_journey = @journey_class.new
    @current_journey.start(entry_station)
  end

  def finish(exit_station)
    @current_journey.end(exit_station)
    @journeys << @current_journey.journey_hash
  end

  private

  def current_journey
    # Returns an incomplete journey or creates a new journey
  end
end
