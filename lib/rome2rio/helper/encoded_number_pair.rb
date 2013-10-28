module Rome2rio
  class EncodedNumberPair
    attr_accessor :a, :b

    def initialize(a = nil, b = nil)
      @a = a
      @b = b
    end

    def self.parse(str)
      # failsafe for empty data
      return if not str or str.strip.length == 0

      ret = new
      str.scan(/([\d\.]+), ([\d\.]+)/).collect { |a, b| ret.a, ret.b = a, b }
      ret
    end

    def to_s
      "#{a}, #{b}"
    end
  end
end
