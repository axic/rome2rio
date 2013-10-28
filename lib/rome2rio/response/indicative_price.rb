module Rome2rio
  class IndicativePrice
    attr_reader :price, :currency, :nativePrice, :nativeCurrency, :isFreeTransfer
    def initialize(json)
      @price = json["price"] if json["price"]
      @currency = json["currency"] if json["currency"]
      @nativePrice = json["nativePrice"] if json["nativePrice"]
      @nativeCurrency = json["nativeCurrency"] if json["nativeCurrency"]
      @isFreeTransfer = json["isFreeTransfer"] == 1 if json["isFreeTransfer"]
    end
  end
end
