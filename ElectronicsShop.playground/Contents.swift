/*
 Electronics Shop
 */

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
  var matchedArr = [Int]()

  for k in keyboards {
    for d in drives {
      var sumOfItem = k + d

      if sumOfItem < b {
      matchedArr.append(sumOfItem)
      }
    }
  }
  let result = matchedArr.isEmpty ? -1 : matchedArr.max()!
  return result
}

let a = getMoneySpent(keyboards: [3, 1], drives: [5, 2, 8], b: 10)
