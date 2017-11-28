require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class TestBus < MiniTest::Test

 def setup()

   @bus1 = Bus.new("Route 1", "Galashiels")

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
end
