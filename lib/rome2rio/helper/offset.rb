module Rome2rio
  class Offset < EncodedNumberPair
    attr_accessor :x, :y
    alias :x :a
    alias :y :b
  end
end
