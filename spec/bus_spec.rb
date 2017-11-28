require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class TestBus < MiniTest::Test

 def setup()
   @passenger_list1 = ["Judy", "Sybill", "David", "Zsolt"]
   @bus1 = Bus.new("Route 1", "Galashiels", @passenger_list1)

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
end
