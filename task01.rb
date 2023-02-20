#1. Write a script that returns true if a string contains comparison, e.g. "<23", ">45".

def task01(str)
  str.gsub!(/ /, "")
  if str.scan(/[<>]=?\d+/)[0].length == str.length 
    true
  else
    "Error! The input must be comparison symbol with integer number after that. Spaces are optional."
  end
end

p task01(">=8764583674583567")
