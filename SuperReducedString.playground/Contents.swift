// Super Reduced String

import Foundation

func checkPairCharaters() -> Bool {
  var i : Int = 0
  while(i < arr.count) {
    if i + 1 < arr.count {
      if arr[i] == arr[i + 1] {
        arr.remove(at: i)
        arr.remove(at: i)
        return true
      }
    }
    i += 1
  }
  return false
}

var arr : Array = Array(readLine()!)
var shouldRepeat : Bool = true

while (shouldRepeat) {
  shouldRepeat = checkPairCharaters()
}

if arr.count == 0 {
  print("Empty String")
} else {
  print(String(arr))
}
