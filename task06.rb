# Convert a string containing phonewords to real phone number, e.g. '1-800-hello' should be converted to '1-800-43556'
# UPD: We allow dashes, brackets (no need to check the position and if it is a opening-closing pair of brackets), whitespace and "+", but only for the "+" the rule is that it should be the first symbol

def task06(str)
  if str.class != String
    raise ArgumentError, "Not a valid format. Need a string."
  end
  if str.delete(" ").empty?
    raise ArgumentError, "String is empty."
  end 

  str.split("-").each do |s|
    if s.scan(/\A[a-zA-Z\(\)\+]+\z|\A\s*[+]*\s*[0-9\(\)\+]+\z/).empty?
      raise ArgumentError, "Write part of the phone number either in numbers or in words."
    end
  end
  if str.scan(/\(/).length != str.scan(/\)/).length || str.index("(") >= str.index(")")
    raise ArgumentError, "Check your pairs of brackets."
  end

  if !str.scan(/\s*[+]?\s*[a-zA-Z0-9\-()]+\s*/).empty?
    return str.downcase.tr('abcdefghijklmnopqrstuvwxyz', "22233344455566677778889999").delete(" ")
  end
  raise ArgumentError, "Not a valid string. Only plus sign, dashes, numbers and letters are allowed."
end

p task06('1-(800)-hello')