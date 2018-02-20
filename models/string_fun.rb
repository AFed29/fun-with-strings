class StringFun

  def self.equal(string1, string2)
    if string1.downcase == string2.downcase
      return "#{string1.capitalize} is the same as #{string2}"
    end
    return "#{string1.capitalize} is not the same as #{string2}"
  end

  def self.pallindrome(string)
    if string.downcase == string.downcase.reverse()
      return "#{string.capitalize} is a pallindrome"
    end
    return "#{string.capitalize} is not a pallindrome"
  end

  def self.isogram(string)
    previous_char = ""
    string.downcase.each_char do |char|
      if previous_char == char
        return "#{string.capitalize} is not an isogram"
      end
      previous_char = char
    end
    return "#{string.capitalize} is an isogram"
  end

end
