#1. Write a script that returns true if a string contains comparison, e.g. "<23", ">45".

def task01(str)
  str.gsub!(/>>/, "")
  str.gsub!(/<</, "")
  str.gsub!(/ /, "")
  str.gsub!(/([<,>,=])(\d+)(\+)/) {">=" + $2}
  str.gsub!(/([<,>,=])(\d+)(\-)/) {"<=" + $2}
  str.include?(">") || str.include?("<")
end