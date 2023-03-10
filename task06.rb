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
  
	p str
	str1 = str.gsub(/[aAbBcC]/, "2").gsub(/[dDeEfF]/, "3").gsub(/[gGhHiI]/, "4").gsub(/[jJkKlL]/, "5").gsub(/[mMnNoO]/, "6").gsub(/[pPqQrRsS]/, "7").gsub(/[tTuUvV]/, "8").gsub(/[wWxXyYzZ]/, "9")

	if !str1.scan(/\s*[+]?\s*[a-zA-Z0-9-]+\s*/).empty?
		return str.gsub(/[aAbBcC]/, "2").gsub(/[dDeEfF]/, "3").gsub(/[gGhHiI]/, "4").gsub(/[jJkKlL]/, "5").gsub(/[mMnNoO]/, "6").gsub(/[pPqQrRsS]/, "7").gsub(/[tTuUvV]/, "8").gsub(/[wWxXyYzZ]/, "9")
	end
	raise "Not a valid string. Only plus sign, dashes, numbers and letters are allowed."
end

p task06("   +1-800-+HElLo")