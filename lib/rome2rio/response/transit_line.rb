module Rome2rio
  class TransitLine
    attr_reader :name, :vehicle, :code, :agency, :frequency, :duration
    def initialize(json)
      @name = json["name"]
      @vehicle = json["vehicle"]
      @code = json["code"]
      @agency = json["agency"]
      @frequency = json["frequency"]
      @duration = json["duration"]
    end
  end
end
