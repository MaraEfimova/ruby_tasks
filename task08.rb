# Convert string containing 8 bit binary data to ASCII symbols, e.g. each 8 of those chars represent 1 ASCII symbol so "0111001001100101" should output "re"

def task08(str)
  raise ArgumentError, "Not a valid format. Need a string" if str.class != String
  raise ArgumentError, "String is empty. This is not valid" if str.empty?
  raise ArgumentError, "The string must be divisible by 8" if !((str.length % 8).zero?)
  raise ArgumentError, "The input string must contain only 0 or 1 symbols" if str.scan(/\A[01]+\z/).empty?
  final_str = ""
  (0..str.length-8).step(8) do |i|
    final_str += str[i,8].to_i(base=2).chr
  end
  final_str
end
