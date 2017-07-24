word1 = 'rat'
perm1 = 'tar'
notperm1 = 'car'

def check_permutation(str1, str2)
  return false if str1.length <= str2.length
  str1.split('').sort.join('') == str2.split('').sort.join('')
end