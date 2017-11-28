class Bus

  attr_accessor :passengers
  attr_reader :route, :destination

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Crunch"
  end

  def count_passengers
    return @passengers.count()
  end

  def passenger_pick_up(new_passenger)
    @passengers << new_passenger
  end

  def passenger_drop_off(passenger_to_drop)
    for passenger in @passengers
      if passenger == passenger_to_drop
        @passengers.delete(passenger)
      end
    end
    return nil
  end

  def bus_empty()
    @passengers.clear
  end

end
