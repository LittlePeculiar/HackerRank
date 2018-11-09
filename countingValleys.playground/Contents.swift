/*
 Counting Valleys
 */
import Foundation

func countingValleys(n: Int, s: String) -> Int {

  var count = 0
  var valleyConuts = 0
  var belowSeaLv = false

  for c in s {
    count += c == "U" ? 1 : -1

    if count < 0 {
      belowSeaLv = true
    } else if count == 0 && belowSeaLv == true {
      valleyConuts += 1
      belowSeaLv = false
    }
  }
  return valleyConuts
}

let test = countingValleys(n: 8, s: "UDDDUDUU")

