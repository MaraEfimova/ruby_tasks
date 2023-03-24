# Output how many square roots are between numbers x and y, e.g. if x=8 and y=37 it should output "4" for 9, 16, 25 and 36

def task07(arr)
  raise ArgumentError, "Not a valid format. Need an array" if arr.class != Array
	raise ArgumentError, "Array must contain 2 numbers" if arr.length != 2
  arr.each do |i|
    raise ArgumentError, "Array must contain 2 numbers" if !(i.class == Integer || i.class == Float)
  end
  raise ArgumentError, "Second number must be positive or zero" if arr[1] < 0
	raise ArgumentError, "First number can not be bigger than second." if arr[0] > arr[1]

	def is_square?(x)
		(Math.sqrt(x) % 1).zero?
	end
	
	arr[0] = 0 if arr[0] < 0
	if arr[0] == arr[1] && is_square?(arr[0])
		return 1
	end

  min = Math.sqrt(arr[0]).to_i + 1
  max = Math.sqrt(arr[1]).to_i
  (max - min) + 1
end
