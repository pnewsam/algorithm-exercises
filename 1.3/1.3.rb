example = "Mr. John Smith   "

def urlify(string)
  string.rstrip.gsub(" ", "%20")
end

puts urlify(example)