/*
 John has collected various rocks. Each rock has various minerals embeded in it. Each type of mineral is designated by a lowercase letter in the range ascii[a - z]. There may be multiple occurrences of a mineral in a rock. A mineral is called a gemstone if it occurs at least once in each of the rocks in John's collection.

 Given a list of minerals embedded in each of John's rocks, display the number of types of gemstones he has in his collection.

 For example, the array of mineral composition strings arr = [abc, abc, bc]. The minerals b and c appear in each composite, so there are 2 gemstones.
 */

// 1st
func gemstones(arr: [String]) -> Int {

  guard !arr.isEmpty else { return 0 }

  var intersection = Set(arr[0])

  for i in 1..<arr.count {
    intersection = intersection.intersection(Set(arr[i]))
  }

  return intersection.count
}

// 2nd
func gemstones2(arr: [String]) -> Int {
  guard !arr.isEmpty else { return 0 }

  let sets = arr.map { Set($0) }
  var intersection = sets[0]

  for set in sets {
    intersection = intersection.intersection(set)
  }

  return intersection.count
}

gemstones(arr: ["abcdde", "baccd", "eeabg"])
