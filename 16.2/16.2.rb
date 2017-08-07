require 'benchmark'

file = File.open('ak.txt')
book = file.read

def find_occurrences_with_each(book, word)
  words = book.split(/[\W]*\s+[\W]*/)
  count = 0
  words.each do |current_word|
    if current_word == word
      count += 1
    end
  end
  count
end

def find_occurrences_with_while(book, word)
  words = book.split(/[\W]*\s+[\W]*/)
  count = 0
  i = 0
  while (i < words.length)
    if words[i] == word
      count += 1
    end
    i += 1
  end
  count
end

def find_occurrences_with_twoway_loop(book, word)
  words = book.split(/[\W]*\s+[\W]*/)
  midway = words.length / 2
  count = 0
  i = 0
  while (i < words.length / 2)
    if words[i] == word
      count += 1
    end
    if words[-i] == word
      count += 1
    end
    i += 1
  end
  count
end

def find_occurrences_with_select(book, word)
  words = book.split(/[\W]*\s+[\W]*/).select{|w|w==word}.length
end

def find_occurrences_with_slice(book, word)
  words = book.split(/[\W]*\s+[\W]*/).sort

  first = words.index(word)
  words.slice!(0..(first-1))
  
  last = words.rindex(word)
  words.slice!((last+1)..-1)

  words.length
end

n = 20
Benchmark.bm do |x|

  x.report ('Each:') {
    n.times do
      find_occurrences_with_each(book, 'Stepan')
    end
  }

  x.report ('While:') {
    n.times do  
      find_occurrences_with_while(book, 'Stepan')
    end
  }

  x.report ('Select:') {
    n.times do  
      find_occurrences_with_select(book, 'Stepan')
    end
  }

  x.report ('Twoway While:') {
    n.times do  
      find_occurrences_with_twoway_loop(book, 'Stepan')
    end
  }

  x.report ('Slice:') {
    n.times do  
      find_occurrences_with_slice(book, 'Stepan')
    end
  }

end
