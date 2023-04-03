# Convert a string containing phonewords to real phone number, e.g. '1-800-hello' should be converted to '1-800-43556'
# UPD: We allow dashes, brackets (no need to check the position and if it is a opening-closing pair of brackets), whitespace and "+", but only for the "+" the rule is that it should be the first symbol

def task06(str)
  if str.class != String
    raise ArgumentError, "Not a valid format. Need a string."
  end
  if str.delete(" -()").empty?
    raise ArgumentError, "String is empty."
  end

  str.delete!(" ")
  
  str.delete("+()").split("-").each do |s|
    if s.scan(/\A[a-zA-Z]+\z|\A[0-9]+\z/).empty?
      raise ArgumentError, "Write part of the phone number either in numbers or in words."
    end
  end

  if str.scan(/[\(\)]/).count != 0 && (str.scan(/\(/).length != str.scan(/\)/).length || str.scan(/[\(\)]/).count != 2 || str.index("(") >= str.index(")"))
    raise ArgumentError, "Check your pairs of brackets."
  end

  if str.match(/\A[+]?[a-zA-Z0-9\-()]+\z/)
    return str.downcase.tr('abcdefghijklmnopqrstuvwxyz', "22233344455566677778889999")
  end
  raise ArgumentError, "Not a valid string. Only plus sign, dashes, numbers and letters are allowed."
end
