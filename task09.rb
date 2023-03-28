# In a string move the letters to the next letter in the alphabet, e.g. "quiz" should become "rvja".

def task09(str)
  raise ArgumentError, "Not a valid format. Need a string" if str.class != String
  raise ArgumentError, "String is empty. This is not valid" if str.empty?
  raise ArgumentError, "Only letters are allowed" if str.scan(/^[a-zA-Z]+$/).empty?

  final_str = ""
  arr = str.split("")
  arr.each do |letter|
    if letter == "z"
      final_str += "a"
    elsif letter == "Z"
      final_str += "A"
    else
      final_str += letter.next()
    end
  end
  final_str
end
