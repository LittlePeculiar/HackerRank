/*
 Divisible Sum Pairs
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
  var count = 0

  for i in 0..<ar.count {
    for ii in (i + 1)..<ar.count where (i + 1) != ar.count {
      if (ar[i] + ar[ii]) % k == 0 {
        count += 1
      }
    }
  }
  return count
}

divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
