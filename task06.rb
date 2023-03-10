# Convert a string containing phonewords to real phone number, e.g. '1-800-hello' should be converted to '1-800-43556'
# UPD: We allow dashes, brackets (no need to check the position and if it is a opening-closing pair of brackets), whitespace and "+", but only for the "+" the rule is that it should be the first symbol

def task06(str)
  p str
  if str.class != String
		raise "Not a valid format. Need a string."
	end
	if str.nil? || str.delete(" ").empty?
		raise "String is empty."
	end
  str
end

p task06(007)