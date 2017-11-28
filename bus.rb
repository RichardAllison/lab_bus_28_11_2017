class Bus

  attr_reader :route, :destination, :passengers

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

end
