def count_by(x, n)
  result = []
  next_element = x
  n.times do
    result << next_element
    next_element += x
  end
  return result
end