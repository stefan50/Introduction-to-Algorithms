# file_name: selection_sort.rb
# Input: An array of elements a1, a2, ..., an
# Output: An array of elements (a1', a2', ..., an') which are a permutation
#         of the Input, such as a1' <= a2'... <= an'
# Method: Find the smallest and swap it with the ith element where
#         i is the number of the iterarion

def smallest(arr, i)
  this_arr = arr[i..arr.count-1]
  min = this_arr[0]
  for j in 0..this_arr.count-1
    if this_arr[j] < min
      min = this_arr[j]
    end
  end
  this_arr.index(min) + i
end

arr = [31, 41, 59, 26, 41, 58]

for i in 0..arr.count-1
  swap = arr[smallest(arr, i)]
  arr[smallest(arr, i)] = arr[i]
  arr[i] = swap
end

puts arr
