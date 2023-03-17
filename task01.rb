#1. Write a script that returns true if a string contains comparison, e.g. "<23", ">45".

def task01(str)
	if str.class != String
		raise ArgumentError, "Not a valid format. Need a string"
	end
  if !str.scan(/\A\s*[1-9]+[0-9]*\s*\z/).empty?
    false
  elsif !str.scan(/\A\s*(<|>|<=|>=|=){1}\s*[1-9]+[0-9]*\s*\z/).empty?
    true
  else
    raise ArgumentError, "Not a valid format. Need a string with a comparison or number"
  end
end
