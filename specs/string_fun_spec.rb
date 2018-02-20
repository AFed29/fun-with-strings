require('minitest/autorun')
require_relative('../models/string_fun.rb')

class TestStringFun < MiniTest::Test
  def setup
    @string1 = "hello"
    @string2 = "goodbye"
  end

  def test_if_equal__equal()
    result = StringFun.equal(@string1, @string1)
    assert_equal("Hello is the same as hello", result)
  end

  def test_if_equal__not_equal
    result = StringFun.equal(@string1, @string2)
    assert_equal("Hello is not the same as goodbye", result)
  end

end
