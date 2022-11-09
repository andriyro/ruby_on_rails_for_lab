require "test_helper"

class WareTest < ActiveSupport::TestCase
   test "should not save user without name" do
     ware = Ware.new
     assert_not ware.save
   end
end
