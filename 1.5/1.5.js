

var checkOneAway = function(str1, str2) {
  if (str1 === str2) { return true };

  if (str1.length - str2.length > 1 || str1.length - str2.length < -1) {
    return false;
  };

  a1 = str1.split('')
  a2 = str2.split('')
  h = {}

  for (let i = 0; i < a1.length; i++) {
    if (!h[a1[i]]) {
      h[a1[i]] = 1
    }
    else { h[a1[i]] += 1 }
    console.log(h)
  };

  for (let j = 0; j < a2.length; j++) {
    if (!h[a2[j]]) {
      h[a2[j]] = -1
    }
    else { h[a2[j]] -= 1 }
    console.log(h)
  };

  var differences = (Object.values(h).reduce(function(sum,value){
    return sum + Math.abs(value);
  }, 0))

  return differences;
}

var checkInsert = function(str1,str2) {
  if (str1.length() - str2.length() > 1 || str1.length() - str2.length() > -1) {
    return false;
  };
  a1 = str1.split('');
  a2 = str2.split('');
  if ((a1 - a2).length() === 1) { return true }
  else if ((a2 - a1).length() === 1) { return true}
  else return false;
}

var remove = function() {
  
}

var replace = function() {
  
}

console.log(checkOneAway('pale','pale'))
console.log(checkOneAway('pale','paleee'))
console.log(checkOneAway('pa','pale'))

console.log(checkOneAway('pale','ple'))
console.log(checkOneAway('all','ple'))