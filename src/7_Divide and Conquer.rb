# Given a mixed array of number and string representations of integers, add up the non-string integers and subtract the total of the string integers. Return as a number.

def div_con(x)
  # Code here
  string_array = x.select { |element| element.is_a?(String) }
  string = 0
  string_array.each do |n|
    string += n.to_i
  end

  integer_array = x.select { |element| element.is_a?(Integer) }
  integer = 0
  integer_array.each do |n|
    integer += n
  end


  return integer - string
end

def div_con(x)
  x.sum { |i| i.is_a?(String) ? -(i.to_i) : i }
end
