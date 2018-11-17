// hurdleRace

func hurdleRace(k: Int, height: [Int]) -> Int {

  let highestJump = height.max()
  var portionNeeded = 0

  if let highestJump = highestJump {
    let gap = k - highestJump
    if gap >= 0 {
      portionNeeded = 0
    } else {
      portionNeeded = abs(gap)
    }
  }
  return portionNeeded
}
