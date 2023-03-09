#For a given array of elements show the type of each element but keep the array structure, e.g. [["hi"], {}, :sym, [1, true], nil] should output [[String], Hash, Symbol, [Integer, TrueClass], NilClass]

def task04(arr)
	if arr.class != Array
		raise "Not a valid format. Need an array"
	end
	if arr.nil? || arr.empty?
		raise "Array is empty. This is not valid"
	end

	result_array = []

	def check_type(el, result_array)
		if el.is_a?(Array)
			if el.empty?
				Array
			else
				temp_arr = []
				el.each do |arr_elem|
					temp_arr << check_type(arr_elem, result_array)
				end
				temp_arr
			end
		elsif el.class == Hash
			if el.empty?
				Hash
			else
				temp_hash = {}
				el.each do |hash_key, hash_value|
					temp_hash.store(check_type(hash_key, result_array), check_type(hash_value, result_array))
				end
				temp_hash
			end
		else
			el.class
		end
	end

	arr.each do |el|
		result_array << (check_type(el, result_array))
	end

	result_array
end
