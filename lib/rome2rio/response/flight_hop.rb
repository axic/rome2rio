module Rome2rio
  class FlightHop
    attr_reader :sCode, :tCode, :sTerminal, :tTerminal,
    :sTime, :tTime, :airline, :flight, :duration,
    :aircraft, :dayChange, :lDuration, :lDayChange,
    :codeshares
    def initialize(json)
      @sCode = json["sCode"]
      @tCode = json["tCode"]
      @sTerminal = json["sTerminal"]
      @tTerminal = json["tTerminal"]
      @sTime = json["sTime"]
      @tTime = json["tTime"]
      @airline = json["airline"]
      @flight = json["flight"]
      @duration = json["duration"]
      @aircraft = json["aircraft"]
      @dayChange = json["dayChange"] if json["dayChange"]
      @lDuration = json["lDuration"] if json["lDuration"]
      @lDayChange = json["lDayChange"] if json["lDayChange"]
      @codeshares = []
      json["codeshares"].each { |codeshare| @codeshares << Codeshare.new(codeshare) }
    end
  end
end
