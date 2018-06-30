# file_name: sum_of_binary_integers.rb
# Input: 2 arrays of 0s and 1s, representing one binary number each
# Output: The sum of these numbers, which may be either an n-digit number
#         or an n+1-digit number
# Method: Firstly, we sum the last digits and it is added to a new array.
#         If the sum is 2, 0 is added and the sum is +1.

num1 = [1, 0, 1, 0]
num2 = [1, 1, 0, 0]

max = num1.count > num2.count ? num1.count : num2.count
if num1.count < max
  zeroes = Array.new(max-num1.count)
  zeroes.fill(0)
  num1.insert(0, zeroes)
elsif num2.count < max
  zeroes = Array.new(max-num2.count)
  zeroes.fill(0)
  num2.insert(0, zeroes)
end

sum_arr = Array.new(max)
sum_arr.fill(0)
i = max

while i > 0
  sum = num1[i-1] + num2[i-1] + sum_arr[i-1]
  unless sum == 2
    sum_arr[i-1] = sum
  else
    if i == 1
      sum_arr.insert(0, 1)
      break
    end
    sum_arr[i-1] = 0
    sum_arr[i-2] = 1
  end
  i = i-1
end
puts sum_arr.join
