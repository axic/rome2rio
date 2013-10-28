module Rome2rio
  class Position < EncodedNumberPair
    attr_accessor :lat, :lng
    alias :lat :a
    alias :lng :b
  end
end
