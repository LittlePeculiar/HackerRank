/*
 Electronics Shop
 */

// this is right 11.97 out of 15
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
  var matchedArr = [Int]()

  for k in keyboards {
    for d in drives {
      let sumOfItem = k + d

      if sumOfItem < b {
      matchedArr.append(sumOfItem)
      }
    }
  }
  let result = matchedArr.isEmpty ? -1 : matchedArr.max()!
  return result
}

let a = getMoneySpent(keyboards: [3, 1], drives: [5, 2, 8], b: 10)


func getMoneySpent2(keyboards: [Int], drives: [Int], b: Int) -> Int {
  var matched = [Int]()
  let money = b

  for k in keyboards {
    let rest = money - k
    let matchedDrives = drives.filter { $0 <= rest }

    if matchedDrives.count > 0 {
      matched.append(matchedDrives.max()! + k)
    }
  }

  if matched.count > 0 {
    return matched.max()!
  } else {
    return -1
  }
}
