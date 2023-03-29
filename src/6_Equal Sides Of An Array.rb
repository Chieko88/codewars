def find_even_index(arr)
  #your code here
  left_index = arr.size - 1
  right_index = 0

  sum_left = 0
  sum_right = 0

  until sum_left == sum_right
    sum_left += arr[left_index]
    sum_right += arr[right_index]
  end
  puts sum_left
  puts sum_right
end

find_even_index([1,2,3,4,3,2,1])
