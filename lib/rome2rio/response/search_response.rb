module Rome2rio
  class SearchResponse
    attr_reader :agencies, :airlines, :airports, :aircrafts, :routes, :verbatim, :data
    def initialize(json)
      @verbatim = json

      @agencies = []
      json["agencies"].each { |agency| @agencies << Agency.new(agency) }

      @airlines = []
      json["airlines"].each { |airline| @airlines << Airline.new(airline) }

      @aircrafts = []
      json["aircrafts"].each { |aircraft| @aircrafts << Aircraft.new(aircraft) }

      @airports = []
      json["airports"].each { |airport| @airports << Airport.new(airport) }

      @routes = []
      json["routes"].each { |route| @routes << Route.new(route) }

      @data = json["data"]
    end
  end
end
