/*
Plus Minus
 Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.

 For example, given the array arr = [1, 1, 0, -1, -1] there are 5 elements, two positive, two negative and one zero. Their ratios would be 2/5 = 0.400000 , 2/5 = 0.40000 and 1/5 = 0.200000 and. It should be printed as

 0.400000
 0.400000
 0.200000

 from hackerrank.com
 */

// frist try
func plusMinus(arr: [Int]) -> Void {

  var plusCount: Double = 0
  var minusCount: Double = 0
  var zeroCount: Double = 0

  let arrCount = Double(arr.count)

  for v in arr {
    if v == 0 {
      zeroCount += 1
    } else if v > 0 {
      plusCount += 1
    } else { // v < 0
      minusCount += 1
    }
  }

  print (plusCount/arrCount)
  print (minusCount/arrCount)
  print (zeroCount/arrCount)
}

//second try
func plusMinus2(arr: [Int]) -> Void {

  let arrCount = Double(arr.count)
  print (Double(arr.filter { $0 > 0 }.count)/arrCount)
  print (Double(arr.filter { $0 < 0 }.count)/arrCount)
  print (Double(arr.filter { $0 == 0 }.count)/arrCount)
}

plusMinus(arr: [6, 0, 1, -1, -1, 2])
