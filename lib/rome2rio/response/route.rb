module Rome2rio
  class Route
    attr_reader :name, :distance, :duration, :stops, :segments
    def initialize(json)
      @name = json["name"]
      @distance = json["distance"]
      @duration = json["duration"]
      @stops = []
      json["stops"].each { |stop| @stops << Stop.new(stop) }
      @segments = []
      json["segments"].each { |segment| @segments << Segment.new(segment) }
    end
  end
end
