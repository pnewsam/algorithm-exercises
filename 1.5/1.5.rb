# SOLVED!


def check_one_away(s1,s2) 
  return true if s1 == s2
  return false if (s1.length - s2.length).abs > 1

  if s1.length == s2.length
    return one_replace_away(s1,s2)
  else
    return one_insert_away(s1,s2)
  end

end

def one_replace_away(s1,s2)
  diffs = 0
  s1.chars.each_with_index do |c,i|
    if c != s2[i]
      diffs += 1
    end
  end
  return false if diffs > 1
  return true
end

def one_insert_away(s1,s2)
  long = [s1,s2].sort_by{|s|s.length}.last
  short = [s1,s2].sort_by{|s|s.length}.first
  diffs = 0
  long_idx = 0
  short_idx = 0
  while (long_idx < long.length)
    if long[long_idx] != short[short_idx]
      diffs += 1
      long_idx += 1
    else
      long_idx += 1
      short_idx += 1
    end
  end
  return false if diffs > 1
  return true
end

puts 'Exactly the same'
puts check_one_away('bale','bale')

puts 'More than 1 different in length'
puts check_one_away('bale','baleee')
puts check_one_away('baleee','bale')

puts 'Only 1 removal away'
puts check_one_away('bale','ble')

puts 'Only 1 insertion away'
puts check_one_away('ble','bale')

puts 'Only 1 replacement away'
puts check_one_away('bale','pale')

puts 'Two replacements away'
puts check_one_away('bale','bail')
puts check_one_away('arco','orca')