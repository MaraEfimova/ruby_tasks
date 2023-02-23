#1. Write a script that returns true if a string contains comparison, e.g. "<23", ">45".

def task01(str)
  if !str.scan(/[<>]? =/).empty? || !str.scan(/ [<>]/).empty?
    raise "No spaces before '>, <, =' symols"
  end
  str.gsub!(/ /, "")
  if str.scan(/[<>]?=?\d+/)[0].length == str.length 
    true
  elsif str.scan(/\d+/)[0].length == str.length 
    false
  else
    raise "The input must be comparison symbol with integer number after that. Spaces are optional."
  end
end