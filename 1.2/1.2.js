var word1 = 'rat'
var perm1 = 'tar'
var notPerm1 = 'car'
var notPerm2 = 'rrt'

// var checkPermutation = function(str1, str2){
//   if (str1.length !== str2.length) { return false }
//   let obj1 = {}
//   let obj2 = {}
//   for (let i = 0; i < str1.length; i++) {
//     if (obj1[`${str1.charAt(i)}`]) {
//       obj1[`${str1.charAt(i)}`] += 1
//     }
//     else { obj1[`${str1.charAt(i)}`] = 1 }
//     if (obj2[`${str2.charAt(i)}`]) {
//       obj2[`${str2.charAt(i)}`] += 1
//     }
//     else { obj2[`${str2.charAt(i)}`] = 1 }
//   }
//   if Object.keys(obj1) !== Object.keys(obj2) { return false }
// }

// Implementation 1: Sort the strings and compare them

var checkPermutation1 = function(str1, str2) {
  return str1.split('').sort().join() === str2.split('').sort().join()
}

// Implementation 2: Check if the two strings have the same # of each character.

var checkPermutation2 = function(str1, str2) {
  // Return false if the strings aren't of equal length
  if (str1.length !== str2.length) { return false }

  // Create a 'letters' object that maps each character in string 1 to the # of times it appears
  letters = {};
  for (let i = 0; i < str1.length; i++) {
    if (!letters[str1.charAt(i)]) { letters[str1.charAt(i)] = 1 }
    else { letters[str1.charAt(i)] ++; }
  }

  // For each occurrence of a character in string 2, decrement the count in the 'letters' object
  for (let i = 0; i < str2.length; i++) {
    if (!letters[str2.charAt(i)]) { return false }
    letters[str2.charAt(i)] --;
    if (letters[str2.charAt(i)] < 0) {
      return false;
    }
  }

  return true;
}

// console.log(checkPermutation2(word1,perm1))
// console.log(checkPermutation2(word1,notPerm1))
// console.log(checkPermutation2(word1,notPerm2))

console.log(checkPermutation1(word1, perm1))
console.log(checkPermutation1(word1, notPerm1))
console.log(checkPermutation1(word1, notPerm2))