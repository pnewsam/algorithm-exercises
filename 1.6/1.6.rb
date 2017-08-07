def compress_string(str)
  chars = str.chars
  output = ''
  chars.each_with_index do |c,i|
    count = 1
    addn = ''
    if c == chars[i-1]
      count += 1
    else
      addn += c
    end
    output += c
  end
end