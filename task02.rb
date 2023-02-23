#2. For a given array that contains some strings output the content of those strings separated with whitespace between them, having capitalized first word and ending with ".", e.g. [[" thIs ", "Is"], nil, " My  ", ["   first"], "", :program] should output "This is my first program."

def task02(arr)
  format_array = arr.flatten.join()
  p format_array
  if format_array.empty? || !format_array.scan(/[^\s\w,-]/).empty?
    raise "Not a valid input. Letters, numbers, commas and dash are allowed in logical order."
  elsif !format_array.scan(/\A[,]/).empty?
    raise "Not a valid input. A sentence cannot start with a comma. Only letters, numbers and dash are allowed."
  elsif !format_array.scan(/[,-]\z/).empty?
    raise "Not a valid input. A sentence cannot end with a comma or dash. Only letters and numbers are allowed."
  else
    format_array = format_array.squeeze(" ")
    if !format_array.scan(/[a-zA-Z]/).empty?
      format_array = format_array.downcase.strip
      format_array.sub!(/[a-zA-Z]/) {|string| string[0].upcase}
    end
    format_array += "."
  end
end