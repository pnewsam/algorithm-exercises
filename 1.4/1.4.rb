example1 = "taco cat"
example2 = "tabo cat"
example3 = "allyylla"
example4 = "bart"


def check_palindrome_permutation(string)
  chars = string.gsub(' ', '')
  counts = generate_char_counts(chars)
  if chars.length.even? && counts.all?{ |count| count % 2 == 0 } || !chars.length.even? && exactly_one_single(counts)
    true
  else false end
end

def exactly_one_single(counts)
  counts.select{ |count| count % 2 == 1 }.length == 1
end

def generate_char_counts(chars)
  char_counts = {}
  chars.split('').each do |char|
    if !char_counts[char] then char_counts[char] = 1
    elsif char_counts[char] then char_counts[char] += 1 end
  end
  return char_counts.values
end

puts check_palindrome_permutation(example1)
puts check_palindrome_permutation(example2)