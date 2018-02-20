require('minitest/autorun')
require_relative('../models/string_fun.rb')

class TestStringFun < MiniTest::Test
  def setup
    @string1 = "hello"
    @string2 = "goodbye"
    @string3 = "racecar"
  end

  def test_if_equal__equal()
    result = StringFun.equal(@string1, @string1)
    assert_equal("Hello is the same as hello", result)
  end

  def test_if_equal__not_equal()
    result = StringFun.equal(@string1, @string2)
    assert_equal("Hello is not the same as goodbye", result)
  end

  def test_if_pallindrome__is_pallindrome()
    result = StringFun.pallindrome(@string3)
    assert_equal("Racecar is a pallindrome", result)
  end

  def test_if_pallindrome__is_not_pallindrome()
    result = StringFun.pallindrome(@string1)
    assert_equal("Hello is not a pallindrome", result)
  end

  def test_if_isogram__is_isogram()
    result = StringFun.isogram(@string3)
    assert_equal("Racecar is an isogram", result)
  end

  def test_if_isogram__is_not_isogram
    result = StringFun.isogram(@string1)
    assert_equal("Hello is not an isogram", result)
  end

end
