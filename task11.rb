# In array of strings first character of next word must match last character of previous word and the word must not have already been said so ["word", "dowry", "yodel", "leader"] - is valid but ["some", "thing"] and ["ant", "tea", "ant"] are not

def task11(arr)
  raise ArgumentError, "Not a valid format. Need an array." if arr.class != Array
  raise ArgumentError, "String is empty. This is not valid" if arr.empty?
  raise ArgumentError, "Erray must contain only string inside." if arr.one? {|elem| elem.class != String}
  arr.each do |elem|
    elem.strip!
    raise ArgumentError, "The element must contain at least one letter." if arr.one? {|elem| elem.empty?}
    raise ArgumentError, "The element must contain only one word" if !elem.match(/\A[a-zA-Z]+\z/)
  end

  i = 0
  while i < arr.count-1 do
    if arr[i][-1].downcase != arr[i+1][0].downcase
      return false
    end
    i+=1
  end
  
  true
end
