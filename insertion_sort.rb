# file_name: insertion_sort.rb
# Input: An array of elements a1, a2, ..., an
# Output: An array of elements (a1', a2', ..., an') which are a permutation
#         of the Input, such as a1' <= a2'... <= an'
# Method: We have a subarray of elements which starts with 1 element.
#         This subarray is always sorted. The key element is the element
#         with index i+1, where i is the index of the last element of
#         the subarray. This element is then compared to its adjacent
#         and if it's more/less, then it's swapped. This is repeated
#         unitl the start of the array is reached
# Bonus: linear_search => searches one by one every element and
#        returns the index if found and -1 if not

arr = [31, 41, 59, 26, 41, 58]

def insertion_sort(arr, ord="asc")
  for j in 1..arr.count-1
    key = arr[j]
    i = j-1
    if ord == "asc"
      while i >= 0 && arr[i] > key
        arr[i+1] = arr[i]
        i = i-1
      end
    elsif ord == "desc"
      while i >= 0 && arr[i] < key
        arr[i+1] = arr[i]
        i = i-1
      end
    end
    arr[i+1] = key
  end
end

def linear_search(el, arr)
  res = -1
  for i in 0..arr.count-1
    if arr[i] == el
      res = i
      break
    end
  end
  res
end

insertion_sort(arr)
puts linear_search(5, arr)
