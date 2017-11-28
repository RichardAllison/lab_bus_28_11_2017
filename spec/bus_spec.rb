require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

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

end
