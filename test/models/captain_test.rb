require "test_helper"

class CaptainTest < ActiveSupport::TestCase
  test "check name presence" do
    cap = Captain.new
    assert_not cap.save, "Name attribute is empty"
  end
  
  test "check name length validation" do
    cap = Captain.new(name: "x" * 31, id: 1)
    assert_not cap.valid?, "Name is too long"
  end
end
