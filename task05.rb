#For array containing two numbers output "true" if one of the numbers is 10 or the sum of both, e.g for [1, 9] output "true"

def task05(arr)
  if arr.class != Array
    raise ArgumentError, "Not a valid format. Need an array"
  end
  if arr.empty?
    raise ArgumentError, "Array is empty. This is not valid"
  end

  if arr.length != 2 || !(arr[0].class == Integer || arr[0].class == Float) || !(arr[1].class == Integer || arr[1].class == Float)
    raise ArgumentError, "Not a valid format. Need an array with two integer or float numbers inside"
  end

  if [arr[0], arr[1], arr[0] + arr[1]].any? 10
    true
  else
    false
  end 
end
