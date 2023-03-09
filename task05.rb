#For array containing two numbers output "true" if one of the numbers is 10 or the sum of both, e.g for [1, 9] output "true"

def task05(arr)
  if arr.class != Array
		raise "Not a valid format. Need an array"
	end
	if arr.nil? || arr.empty?
		raise "Array is empty. This is not valid"
	end
  
  first, second = arr[0], arr[1]

  if arr.length != 2 || first.class != Integer || second.class != Integer
    raise "Not a valid format. Need an array with two integer numbers inside"
  end

  if first === 10 || second === 10 || first + second === 10
    true
  else
    false
  end 
end
