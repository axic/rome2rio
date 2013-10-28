module Rome2rio
  class Airport
    attr_reader :code, :name, :pos
    def initialize(json)
      @code = json["code"]
      @name = json["name"]
      @pos = Position.parse(json["pos"])
    end
  end
end
