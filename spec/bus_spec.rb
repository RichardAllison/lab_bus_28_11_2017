require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class TestBus < MiniTest::Test

 def setup()

   @bus1 = Bus.new("Route 1", "Galashiels")

 end

end
