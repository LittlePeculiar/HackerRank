/*
 Migratory Birds
 */
import Foundation

func migratoryBirds(arr: [Int]) -> Int {
  let countedSet = NSCountedSet(array: arr)
  return countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) } as! Int
}

let result = migratoryBirds(arr: [1, 3, 2, 2, 2, 1, 1, 4, 5])

func migratoryBirds2(arr: [Int]) -> Int {
  var counts: [Int : Int] = [:]
  for v in arr {
    counts[v] = (counts[v] ?? 0 ) + 1
  }

  let result = counts.sorted(by: {$0.value > $1.value || ($0.value == $1.value && $0.key < $1.key)})
  return result[0].key
}

let result2 = migratoryBirds2(arr: [1, 3, 2, 2, 2, 1, 1, 4, 5])

