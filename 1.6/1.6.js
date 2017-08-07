var compressString = function(str) {
  var a = str.split('');
  var output = '';
  var i = 0;
  while (i < a.length) {
    var count = 1;
    var j = 1;
    while (a[i] === a[i + j]) {
      count += 1;
      j++;
    }
    output += (a[i] + count.toString());
    i += count;
  };
  return output;
};

x = 'aaabbbccc'
y = 'aaaabcc'