/*
 Birthday Chocolate
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
  var cnt = 0
  for (i, _) in s.enumerated() where i + m <= s.count {
    cnt += (s[i..<(i + m)].reduce(0, +) == d) ? 1 : 0
  }
  return cnt
}

birthday(s: [4], d: 4, m: 1)
