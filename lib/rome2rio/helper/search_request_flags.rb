module Rome2rio
  class SearchRequestFlags < EncodedFlags
    FLAG_VALUES = {
      :all                     => 0x00000000,
      :no_segments             => 0x000fffff,
      :no_flight_segments      => 0x00000001,
      :no_flight_itineraries   => 0x00000002,
      :no_train_segments       => 0x00000010,
      :no_train_itineraries    => 0x00000020,
      :no_bus_segments         => 0x00000100,
      :no_bus_itineraries      => 0x00000200,
      :no_ferry_segments       => 0x00001000,
      :no_ferry_itineraries    => 0x00002000,
      :no_car_segments         => 0x00010000,
      :no_commuter_hops        => 0x00100000,
      :no_special_hops         => 0x00200000,
      :no_minor_start_segments => 0x00400000,
      :no_minor_end_segments   => 0x00800000,
      :no_paths                => 0x01000000,
      :no_prices               => 0x04000000,
      :no_scoring              => 0x10000000,
    }
  end
end
