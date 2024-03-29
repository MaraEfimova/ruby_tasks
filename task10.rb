# Return the maximum product of three numbers in an array, so [-8, -9, 1, 2, 7] outputs 504 (which is -8*-9*7)

def task10(arr)
  raise ArgumentError, "Not a valid format. Need an array" if arr.class != Array
  raise ArgumentError, "Array is empty. This is not valid" if arr.empty?
  raise ArgumentError, "Not a valid format. Need an array with more then two numbers inside" if arr.length < 3
  arr.each do |element|
    raise ArgumentError, "Not a valid format. Elements must be Integer or Float numbers." if element.class != Integer && element.class != Float
  end

  multipl_arr = []
  arr = arr.combination(3).to_a
  
  arr.each do |elem|
    multipl_arr << elem[0]*elem[1]*elem[2]
  end

  multipl_arr.max
end
