def find_even_index(arr)
  #your code here
  l_sums = arr.clone
  r_sums = arr.clone
  for i in 1...arr.length
    l_sums[i] += l_sums[i - 1]
  end
  for i in (arr.length - 2).downto(0)
    r_sums[i] += r_sums[i + 1]
  end

  for i in 0...arr.length
    if l_sums[i] == r_sums[i]
      return i
    end
  end
  return -1
end
