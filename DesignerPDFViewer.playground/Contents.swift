// Designer PDF Viewer

func designerPdfViewer(h: [Int], word: String) -> Int {

  let alphabetArr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  var heightSet = Set<Int>()
  var minHeightSet = Int()
  var maxHeightSet = Int()

  for char in word {
    let idx = alphabetArr.index(of: "\(char)")
    if let idx = idx {
      heightSet.insert(h[idx])
      print(heightSet)
    }
    minHeightSet = heightSet.min()!
    maxHeightSet = heightSet.max()!
  }

  return minHeightSet * maxHeightSet * (word.count)
}

let a = designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zaba")
