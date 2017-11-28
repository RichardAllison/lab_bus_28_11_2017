class BusStop

  attr_reader :stop_name
  attr_accessor :queue

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def add_to_queue(person)
    @queue << person
  end


end
