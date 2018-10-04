import UIKit

func insertionSort(_ array: [Int]) -> [Int] {
  var a = array
  for x in 1..<a.count {
    var y = x
    let temp = a[y]
    while y > 0 && a[y] < a[y - 1] {
      a[y] = a [y - 1]
      y -= 1
    }
    a[y] = temp
  }
  return a
}


// generic

func insertionSortGeneric<T>(_ array: [T], _ isOrderBefore: (T, T) -> Bool) -> [T] {
  var a = array
  for x in 1..<a.count {
    var y = x
    let temp = a[y]

    while y > 0 && isOrderBefore(temp, a[y - 1]) {
      a[y] = a[y - 1]
      y -= 1
    }
    a[y] = temp
  }
  return a
}
