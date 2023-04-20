# Imagine you're playing slots and each string in an array represents element, so make a script that outputs "true" if you win, meaning having all the same elements, e.g.  ['a', 'a', 'a', 'a'] and ["SS", "SS", "SS", "SS"] are a win but ["SS", "SS", "SS", "Ss"] is not.

def task12(arr)
  raise ArgumentError, "Not a valid format. Need an array." if arr.class != Array
  raise ArgumentError, "Array is empty. This is not valid" if arr.empty?
  raise ArgumentError, "Array can not contain only one element" if arr.length == 1
  arr.each do |elem|
    raise ArgumentError, "Array can not contain whitespaces inside the string elements" if elem.class == String && elem.strip.length != elem.length
  end
  return false if arr.any? {|elem| elem != arr.first}
  true
end
