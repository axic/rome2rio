module Rome2rio
  class Codeshare
    attr_reader :airline
    def initialize(json)
      @airline = json["airline"]
    end
  end
end
