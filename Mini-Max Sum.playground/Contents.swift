/*
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 For example, arr = [1. 3, 5, 7, 9]. Our minimum sum is 1 + 3 + 5 + 7 = 16 and our maximum sum is 3 + 5 + 7 + 9 = 24 . We would print
 */

// 1st
func miniMaxSum(arr: [Int]) -> Void {
// accending sort // sum from idx0 ~ 3. sum from index4 ~ 1
  var a = arr
  var minSum = 0
  var maxSum = 0

  for i in 1..<a.count {
    var x = i
    while x > 0 && a[x] < a[x - 1] {
      a.swapAt(x - 1, x)
      x -= 1
    }
  }

  for i in 0..<a.count - 1 {
    minSum += a[i]
  }

  for i in 1..<a.count {
    maxSum += a[i]
  }
  print(minSum, maxSum, separator: " ")
}

miniMaxSum(arr: [7, 69, 2, 221, 8974])


// 2nd
func miniMaxSum2(arr: [Int]) -> Void {
  var a = arr
  var minSum = 0
  var maxSum = 0

  for i in 1..<a.count {
    var x = i
    while x > 0 && a[x] < a[x - 1] {
      a.swapAt(x - 1, x)
      x -= 1
    }
  }
  for i in 1..<a.count {
    minSum += a[i - 1]
    maxSum += a[i]
  }
  print(minSum, maxSum, separator: " ")
}
