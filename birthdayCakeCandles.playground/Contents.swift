
/*
 You are in charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age. When she blows out the candles, she’ll only be able to blow out the tallest ones. Your task is to find out how many candles she can successfully blow out.

 For example, if your niece is turning 4 years old, and the cake will have 4 candles of height 4, 4, 3, 1, she will be able to blow out 2 candles successfully, since the tallest candles are of height 4 and there are 2 such candles.
 */

func birthdayCakeCandles(ar: [Int]) -> Int {

  //  let temp = ar.max()
  var count = 0
  var max = 0

  for i in 0..<ar.count {
    ar[i] > max ? (max = ar[i]) : (max = max)
  }

  for ii in 0..<ar.count {
    if ar[ii] == max {
      count += 1
    }
  }
  return count
}

