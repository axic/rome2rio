module Rome2rio
  class Stop
    attr_reader :kind, :name, :pos, :code
    def initialize(json)
      @kind = json["kind"]
      @name = json["name"]
      @pos = Position.parse(json["pos"])
      @code = json["code"]
    end
  end
end
