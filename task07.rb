# Output how many square roots are between numbers x and y, e.g. if x=8 and y=37 it should output "4" for 9, 16, 25 and 36

def task07(arr)
  if arr.class != Array
		raise ArgumentError, "Not a valid format. Need an array"
	end
	if arr.length != 2
		raise ArgumentError, "Array must contain 2 numbers"
	end
  arr.each do |i|
    if !(arr[0].class == Integer || arr[0].class == Float) && !(arr[1].class == Integer || arr[1].class == Float)
      raise ArgumentError, "Array must contain 2 numbers"
    end
  end
  (arr[0]...arr[1]).select()
end

p task07([7.6, 37])