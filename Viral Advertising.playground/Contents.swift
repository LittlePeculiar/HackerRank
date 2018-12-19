// Viral Advertising

func viralAdvertising(n: Int) -> Int {

  var sharedNum = 5
  var likedNum = 0
//  var cumlulativeNum = 0

  for _ in 1...n {
    likedNum += sharedNum / 2
    sharedNum = (sharedNum / 2) * 3
  }

  return likedNum
}

var a = viralAdvertising(n: 5)
