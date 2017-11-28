require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class TestPerson < MiniTest::Test

 def setup()
   @person1 = Person.new("Bobby", 47)
 end

 def test_name
   assert_equal("Bobby", @person1.name())
 end

 def test_age
   assert_equal(47, @person1.age().to_i())
 end

end
