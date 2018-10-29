/*
 You are given a string containing characters A and B only. Your task is to change it into a string such that there are no matching adjacent characters. To do this, you are allowed to delete zero or more characters in the string.

 Your task is to find the minimum number of required deletions.

 For example, given the string s = AABAAB, remove an A at positions 0 and 3 to make s = ABAB in 2 deletions.
 */
import Foundation

// 1st try
func alternatingCharacters(s: String) -> Int {

  var previousChar = s[s.startIndex]
  var presentChar = Character("T")
  var eraseCount = 0

  for i in 1..<s.count {
    presentChar = s[s.index(s.startIndex, offsetBy: i)]

    if previousChar == presentChar {
      eraseCount += 1
    }
    previousChar = presentChar
  }
  return eraseCount
}

alternatingCharacters(s: "ACACBCB")

// 2nd try
func alternatingCharacters2(s: String) -> Int {

  var previousChar = s[s.startIndex]
  var presentChar = Character("T")
  var eraseCount = -1

  s.forEach { (word) in
    presentChar = word

    if previousChar == presentChar {
      eraseCount += 1
    }
    previousChar = word
  }
  return eraseCount
}
