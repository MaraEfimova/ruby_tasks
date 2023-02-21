#2. For a given array that contains some strings output the content of those strings separated with whitespace between them, having capitalized first word and ending with ".", e.g. [[" thIs ", "Is"], nil, " My  ", ["   first"], "", :program] should output "This is my first program."

def task02(arr)
    result = arr.flatten.join(" ").squeeze!(" ").downcase().strip
    result[0] = result[0].upcase! if !result.empty?
    result += "." if result[-1] != "." && !result.empty?
end
