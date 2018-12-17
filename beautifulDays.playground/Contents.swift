// Beautiful Days at the Movies
import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {

  let daysArray = Array(i...j)
  var beautifulDaysCounts = 0

  for v in daysArray {
    let origianlNum = v
    var reversedNum = 0

    let tensDigit = origianlNum / 10
    let unitsDigit = origianlNum % 10
    reversedNum = (unitsDigit * 10) + tensDigit

    if abs(origianlNum - reversedNum) % k == 0 {
      beautifulDaysCounts += 1
    } else {
      beautifulDaysCounts += 0
    }
  }
  return beautifulDaysCounts
}

var a = beautifulDays(i: 13, j: 45, k: 3)
