require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class TestBus < MiniTest::Test

 def setup()
   @person1 = Person.new("Trev", 32)
   @person2 = Person.new("Gregoriov", 145)
   @person3 = Person.new("Phil", 14)
   @passenger_list1 = ["Judy", "Sybill", "David", "Zsolt"]
   @bus1 = Bus.new("Route 1", "Galashiels", @passenger_list1)
   @edinburgh_stop = BusStop.new("Edinburgh")


 end

 def test_route_number
   assert_equal("Route 1", @bus1.route())
 end

 def test_route_destination
   assert_equal("Galashiels", @bus1.destination())
 end

 def test_drive_method
   assert_equal("Crunch", @bus1.drive())
 end

 def test_passengers
   assert_equal(@passenger_list1, @bus1.passengers())
 end

 def test_count_passengers
   assert_equal(4, @bus1.count_passengers())
 end

 def test_passenger_pick_up
   @bus1.passenger_pick_up("Dell")
   assert_equal(["Judy", "Sybill", "David", "Zsolt", "Dell"], @bus1.passengers)
 end

 def test_passenger_drop_off
   @bus1.passenger_drop_off("Sybill")
   assert_equal(["Judy", "David", "Zsolt"], @bus1.passengers)
 end

 def test_bus_empty
   @bus1.bus_empty()
   assert_equal([], @bus1.passengers)
 end

 def test_all_passengers_picked_up
   @edinburgh_stop.add_to_queue(@person1.name)
   @edinburgh_stop.add_to_queue(@person2.name)
   @edinburgh_stop.add_to_queue(@person3.name)
   assert_equal(3, @edinburgh_stop.queue.length)
   @bus1.all_passengers_picked_up(@edinburgh_stop.queue)
   assert_equal(7, @bus1.passengers.length)
   assert_equal(0, @edinburgh_stop.queue.length)
 end

 # Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.

end
