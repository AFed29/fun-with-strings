class StringFun

  def self.equal(string1, string2)
    if string1.downcase == string2.downcase
      return "#{string1.capitalize} is the same as #{string2.downcase}"
    end
    return "#{string1.capitalize} is not the same as #{string2.downcase}"
  end

  def self.pallindrome(string)
    if string.downcase == string.downcase.reverse()
      return "#{string.capitalize} is a pallindrome"
    end
    return "#{string.capitalize} is not a pallindrome"
  end

  def self.isogram(string)
    previous_char = ""
    sorted_letters = string.chars.sort
    sorted_letters.each do |char|
      if previous_char == char
        return "#{string.capitalize} is not an isogram"
      end
      previous_char = char
    end
    return "#{string.capitalize} is an isogram"
  end

  def self.anagram(string1, string2)
    sorted_letters1 = string1.downcase.chars.sort
    sorted_letters2 = string2.downcase.chars.sort
    if sorted_letters1 == sorted_letters2
      return "#{string1.capitalize} is an anagram of #{string2.downcase}"
    end
    return "#{string1.capitalize} is not an anagram of #{string2.downcase}"
  end

end
