# file_name: merge_sort.rb
# Input: An array of elements a1, a2, ..., an
# Output: An array of elements (a1', a2', ..., an') which are a permutation
#         of the Input, such as a1' <= a2'... <= an'
# Mehtod:
#        Divide: Divide the n-element sequence into two n/2-element sequences
#        Conquer: Sort the two subsequences recursively using merge sort
#        Combine: Merge the two answers into one solution

def merge(arr, start, middle, end_val)
  left_arr = arr[start..middle]
  right_arr = arr[middle+1..end_val]
  left_arr[left_arr.count] = Float::INFINITY
  right_arr[right_arr.count] = Float::INFINITY # we are lazy to check if the arrays are empty

  left = 0
  right = 0

  for index in start..end_val
    if left_arr[left] <= right_arr[right]
      arr[index] = left_arr[left]
      left = left + 1
    else
      arr[index] = right_arr[right]
      right = right + 1
    end
  end
end

def merge_sort(arr, start, end_val)
  if start < end_val
    middle = (start+end_val)/2
    merge_sort(arr, start, middle)
    merge_sort(arr, middle+1, end_val)
    merge(arr, start, middle, end_val)
  end
end


arr = [31, 41, 59, 26, 41, 58]
merge_sort(arr, 0, arr.count-1)
puts arr
