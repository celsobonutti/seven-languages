def only_each(array)
  array_copy = array.clone
  array_copy.each { puts array_copy.shift(4).to_s }
  nil
end

def with_slice(array)
  array.each_slice(4) { |element| puts element.to_s }
end
