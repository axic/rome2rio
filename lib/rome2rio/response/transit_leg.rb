module Rome2rio
  class TransitLeg
    attr_reader :url, :hops
    def initialize(json)
      @url = json["url"]
      @hops = []
      json["hops"].each { |hop| @hops << TransitHop.new(hop) }
    end
  end
end
