module Rome2rio
  class TransitItinerary
    attr_reader :legs
    def initialize(json)
      @legs = []
      json["legs"].each { |leg| @legs << TransitLeg.new(leg) }
    end
  end
end
