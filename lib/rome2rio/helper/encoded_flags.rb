module Rome2rio
  class EncodedFlags
    attr_accessor :flags

    def initialize(flags = nil)
      @flags = flags
    end

    def self.parse(str)
      value = Integer(str)
      ret = new
      ret.flags = []
      self::FLAG_VALUES.each { |key, flag| ret.flags << key if (value & flag) == flag }
      ret
    end

    def to_a
      return flags.map { |k, v| k if v == true || v == 1 }.select { |k| k != nil } if flags.is_a?(Hash)
      return [ flags.to_sym ] if flags.is_a?(String)
      return [ flags ] if flags.is_a?(Symbol)
      flags
    end

    def method_missing(meth, *args, &block)
      if meth.to_s.end_with?("?") then
        key = meth.to_s.chop.to_sym

        return true if to_a.include?(key)

        #	    return flags.include?(key) if flags.is_a?(Array)
        #	    return flags[key] if flags.is_a?(Hash)
        #	    return true if flags == key

      end

      super(meth, *args, &block)
    end

    def to_s
      to_i.to_s
    end

    def to_i
      keys = to_a

      ret = 0
      self.class::FLAG_VALUES.each { |key, flag| ret |= flag if keys.include?(key) }
      ret
    end
  end
end
