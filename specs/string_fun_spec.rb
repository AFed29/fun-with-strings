require('minitest/autorun')
require_relative('../models/string_fun.rb')

class TestStringFun < MiniTest::Test
  def setup
    @string1 = "hello"
    @string2 = "goodbye"
    @string3 = "racecar"
    @string4 = "blacksmith"
    @string5 = "listen"
    @string6 = "silent"
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
    result = StringFun.isogram(@string4)
    assert_equal("Blacksmith is an isogram", result)
  end

  def test_if_isogram__is_not_isogram
    result = StringFun.isogram(@string3)
    assert_equal("Racecar is not an isogram", result)
  end

  def test_if_anagram__is_anagram
    result = StringFun.anagram(@string5, @string6)
    assert_equal("Listen is an anagram of silent", result)
  end

  def test_if_anagram__is_not_anagram
    result = StringFun.anagram(@string4, @string6)
    assert_equal("Blacksmith is not an anagram of silent", result)
  end

end
