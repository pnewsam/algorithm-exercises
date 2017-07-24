var example = 'Mr. John Smith   ';

// Using prototype methods
// function urlify1(string) {
//   return string.replace(/\s+$/,"").replace(/[ ]/g, "%20");
// }
// console.log(urlify1(example));

// Without prototype methods
function urlify2(string) {
  var trimmedString = string.trim()
  var newString = ''
  for (let i = 0; i < trimmedString.length; i++) {
    if (trimmedString.charAt(i) === ' ') {
      newString = newString.concat('%20')
    }
    else {
      newString = newString.concat(trimmedString.charAt(i))
    }
  }
  return newString;
}

console.log(urlify2(example));