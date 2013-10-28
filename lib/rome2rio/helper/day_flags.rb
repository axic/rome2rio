module Rome2rio
  class DayFlags < EncodedFlags
    FLAG_VALUES = {
      :sunday    => 0x01,
      :sun       => 0x01,
      :monday    => 0x02,
      :mon       => 0x02,
      :tuesday   => 0x04,
      :tue       => 0x04,
      :wednesday => 0x08,
      :wed       => 0x08,
      :thursday  => 0x10,
      :thu       => 0x10,
      :friday    => 0x20,
      :fri       => 0x20,
      :saturday  => 0x40,
      :sat       => 0x40,
      :weekdays  => 0x3E,
      :weekends  => 0x41,
      :all       => 0x7F
    }
  end
end
