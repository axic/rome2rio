module Rome2rio
  class TransitHop
    attr_reader :sName, :sPos, :tName, :tPos, :frequency, :duration, :indicativePrice, :lines
    def initialize(json)
      @sName = json["sName"]
      @sPos = Position.parse(json["sPos"])
      @tName = json["tName"]
      @tPos = Position.parse(json["tPos"])
      @frequency = json["frequency"]
      @duration = json["duration"]
      @indicativePrice = IndicativePrice.new(json["indicativePrice"])
      @lines = []
      json["lines"].each { |line| @lines << TransitLine.new(line) }
    end
  end
end
