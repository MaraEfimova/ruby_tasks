# Return the maximum product of three numbers in an array, so [-8, -9, 1, 2, 7] outputs 504 (which is -8*-9*7)

def task10(arr)
  raise ArgumentError, "Not a valid format. Need an array" if arr.class != Array
  raise ArgumentError, "Array is empty. This is not valid" if arr.empty?
  raise ArgumentError, "Not a valid format. Need an array with more then two integer or float numbers inside" if arr.length < 3 
  arr.each do |number|
    raise ArgumentError, "Not a valid format. Need an array with more then two integer or float numbers inside" if number.class != Integer && number.class != Float
  end

  arr.sort!
  arr = [arr[0], arr[1], arr[-1], arr[-2], arr[-3]].uniq.sort

  max_product = arr[0]*arr[1]*arr[2]
  n = arr.length
  i = 0

  while i < n-2 do
    j = i + 1
    while j < n -1 do
      k = j + 1
      while k < n do
        max_product = [max_product, arr[i]*arr[j]*arr[k]].max
        k += 1
      end
      j += 1
    end
    i += 1
  end
  
  max_product
end
