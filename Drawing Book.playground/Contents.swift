// Drawing Book

func pageCount(n: Int, p: Int) -> Int {
  let fromFront = Int(p / 2)
  let fromBack = Int(n / 2) - Int(p / 2)

  return min(fromFront, fromBack)
}

let a = pageCount(n: 6, p: 2)
