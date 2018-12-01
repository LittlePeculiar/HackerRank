// pickingNumbers

func pickingNumbers(a: [Int]) -> Int {
  var res = 0
  var dict = [Int:Int]()
  for int in a {
    dict[int] = dict[int] == nil ? 1 : dict[int]! + 1
  }
  var keys = Array(dict.sorted { $0.key < $1.key }.map { $0.key })
  var values = Array(dict.sorted { $0.key < $1.key }.map { $0.value })
  var prev = keys[0]
  res = max(res, values[0])
  for i in 1..<keys.count {
    res = max(res, values[i])
    let curr = keys[i]
    if abs(prev - curr) <= 1 {
      res = max(res, values[i - 1] + values[i])
    }
    prev = keys[i]
  }
  return res
}

let ans = pickingNumbers(a: [4, 6, 5, 3, 3, 1])
