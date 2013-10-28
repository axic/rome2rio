module Rome2rio
  class FlightHop
    attr_reader :sCode, :tCode, :sTime, :tTime, :airline, :flight,
    :duration, :dayChange, :lDuration, :lDayChange
    def initialize(json)
      @sCode = json["sCode"]
      @tCode = json["tCode"]
      @sTime = json["sTime"]
      @tTime = json["tTime"]
      @airline = json["airline"]
      @flight = json["flight"]
      @duration = json["duration"]
      @dayChange = json["dayChange"] if json["dayChange"]
      @lDuration = json["lDuration"] if json["lDuration"]
      @lDayChange = json["lDayChange"] if json["lDayChange"]
    end
  end
end
