module Rome2rio
  class Aircraft
    attr_reader :code, :manufacturer, :model
    def initialize(json)
      @code = json["code"]
      @manufacturer = json["manufacturer"]
      @model = json["model"]
    end
  end
end
