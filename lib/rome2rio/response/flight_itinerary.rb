module Rome2rio
  class FlightItinerary
    attr_reader :legs
    def initialize(json)
      @legs = []
      json["legs"].each { |leg| @legs << FlightLeg.new(leg) }
    end
  end
end
