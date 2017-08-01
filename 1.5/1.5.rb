def check_one_away(s1,s2) 
  return true if s1 == s2

  shorter = [s1, s2].sort{|str|str.length}.first
  longer = [s1, s2].sort{|str|str.length}.last

  return false if longer.length - shorter.length > 1

  puts 'shorter: ' + shorter
  puts 'longer: ' + longer

  longer_array = longer.split('')

  shorter.split('').each do |char|
    longer_array.delete(char)
  end

  return longer_array
end


puts check_one_away('bale','bale')
puts check_one_away('bale','baleee')
puts check_one_away('baleee','bale')

puts check_one_away('bale','ble')
puts check_one_away('bale','pale')
puts check_one_away('bale','bail')