# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  i = 0
  low_key = nil
  low_value = nil

  name_hash.each  do |key, value|
    if i == 0
      key = low_key
      value = low_value
    elsif value < low_value
      low_value = value
      low_key = key
    end
    i += 1
  end
  low_key
end