module Rome2rio
  class Airline
    attr_reader :code, :name, :url, :iconPath, :iconSize, :iconOffset
    def initialize(json)
      @code = json["code"]
      @name = json["name"]
      @url = json["url"]
      @iconPath = json["iconPath"]
      @iconSize = Size.parse(json["iconSize"])
      @iconOffset = Offset.parse(json["iconOffset"])
    end
  end
end
