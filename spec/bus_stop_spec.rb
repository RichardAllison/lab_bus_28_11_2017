require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")

class TestBusStop < MiniTest::Test

 def setup()
   @queue = ["Hermione", "John the Bastard", "Spike"]
   @edinburgh_stop = BusStop.new("Edinburgh")
 end

 def test_stop
   assert_equal("Edinburgh", @edinburgh_stop.stop_name())
 end


end
