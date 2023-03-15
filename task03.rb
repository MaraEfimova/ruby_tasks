#[#3] Task03 - For a given array that contains the string "foo" - output it at the end without changing the places of the other items in the array, e.g. [1, :here, nil, "some", "foo", "thing", ""] should output [1, :here, nil, "some", "thing", "", "foo"] 

def task03(arr)
	if arr.class != Array
		raise ArgumentError, "Not a valid format. Need an array"
	end
	if arr.empty?
		raise ArgumentError, "Array is empty. This is not valid"
	end
	
	arr1, arr2 = arr.partition{|elem| elem.class == String && elem.strip.downcase == "foo"}
	arr2 + arr1
end
