module Rome2rio
  class Size < EncodedNumberPair
    attr_accessor :w, :h
    alias :w :a
    alias :h :b
  end
end
