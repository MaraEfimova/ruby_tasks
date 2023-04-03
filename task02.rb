#2. For a given array that contains some strings output the content of those strings separated with whitespace between them, having capitalized first word and ending with ".", e.g. [[" thIs ", "Is"], nil, " My  ", ["   first"], "", :program] should output "This is my first program."

def task02(arr)
  if arr.class != Array
    raise ArgumentError, "The input type is invalid, expect an array"
  end
  if arr.empty?
    raise ArgumentError, "The input is empty."
  end

  format_string = arr.flatten.join(" ").strip
  if format_string.empty?
    raise ArgumentError, "Not a valid input. The input had only empty data."
  end
  if format_string.match(/([^\s\w,-]|_)/)
    raise ArgumentError, "Not a valid input. Letters, numbers, commas and dash are allowed in logical order."
  end
  if format_string[0] === ","
    raise ArgumentError, "Not a valid input. A sentence cannot start with a comma. Only letters, numbers and dash are allowed."
  end
  if [",", "-"].any? format_string[-1]
    raise ArgumentError, "Not a valid input. A sentence cannot end with a comma or dash. Only letters and numbers are allowed."
  end

  format_string = format_string.squeeze(" ").downcase.strip
  format_string.sub!(/[a-zA-Z]/) {|string| string[0].upcase}
  format_string += "."
end
