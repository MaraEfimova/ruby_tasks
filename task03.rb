#[#3] Task03 - For a given array that contains the string "foo" - output it at the end without changing the places of the other items in the array, e.g. [1, :here, nil, "some", "foo", "thing", ""] should output [1, :here, nil, "some", "thing", "", "foo"] 

def task03(arr)
    raise "Array is empty. This is not valid" if arr.empty?
    arr1, arr2 = arr.partition{|elem| elem.class == String && elem.strip.downcase == "foo"}
    arr2 + arr1
end