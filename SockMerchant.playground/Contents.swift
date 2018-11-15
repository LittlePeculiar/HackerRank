// Sock Merchant

func sockMerchant(n: Int, ar: [Int]) -> Int {

  var sockDic = [Int: Int]()
  var sockDicValue = [Int: Int]()
  var pairOfSock = [Int]()

  for item in ar {
    sockDic[item] = (sockDic[item] ?? 0) + 1
  }

  sockDicValue = sockDic.mapValues { $0 / 2 }

  for (_, v) in sockDicValue {
    pairOfSock.append(v)
  }

  return pairOfSock.reduce(0, +)
}

let a = sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
