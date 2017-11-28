require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person")

class TestBusStop < MiniTest::Test

 def setup()
   @person1 = Person.new("Trev", 32)
   @person2 = Person.new("Gregoriov", 145)
   @person3 = Person.new("Phil", 14)
   @edinburgh_stop = BusStop.new("Edinburgh")
 end

 def test_stop
   assert_equal("Edinburgh", @edinburgh_stop.stop_name())
 end

 def test_add_to_queue
   @edinburgh_stop.add_to_queue(@person1.name)
   assert_equal(1, @edinburgh_stop.queue.length())
   assert_equal(["Trev"], @edinburgh_stop.queue())
 end

end
