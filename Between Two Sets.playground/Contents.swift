/*
 1-1. got a Array's LCM (Least Common Multiple) for multiples of a Array's LCM.
 1-2. Met condition of multiples of a Array's LCM is less than b Array's minimum number.
 2. Checked remainder equal 0. (multiples of a Array's LCM)  % (b Array's element)
 */

func getTotalX(a: [Int], b: [Int]) -> Int {

    let max = a.max()!
    var res = 1
    var x = 2
    var acopy = a
    while x <= max {
      var indices: [Int] = []
      for (index, element) in acopy.enumerated() {
        if element % x == 0 {
          indices.append(index)
        }
      }

      if indices.count >= 2 {
        for index in indices {
          acopy[index] = acopy[index] / x
        }
        res *= x
      } else {
        x += 1
      }
    }

    let gcm = acopy.reduce(res) { $0 * $1 }

    // ----------------------------------------------------

    var gcms: [Int] = []
    var loop = 1
    while true {
      let temp = gcm * loop
      if temp <= b.min()! {
        gcms.append(temp)
      } else {
        break
      }
      loop += 1
    }

    var divisor: [Int] = []
    for g in gcms {
      if 0 == b.map({ $0 % g }).reduce(0, +) {
        divisor.append(g)
      }
    }

    return divisor.count
}
