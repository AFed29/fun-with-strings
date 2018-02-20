class StringFun

  def self.equal(string1, string2)
    if string1 == string2
      return "#{string1.capitalize} is the same as #{string2}"
    else
      return "#{string1.capitalize} is not the same as #{string2}"
    end
  end

end
