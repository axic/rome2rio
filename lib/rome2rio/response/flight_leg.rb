module Rome2rio
  class FlightLeg
    attr_reader :days, :hops
    def initialize(json)
      @days = DayFlags.parse(json["days"])
      @hops = []
      json["hops"].each { |hop| @hops << FlightHop.new(hop) }
    end
  end
end
