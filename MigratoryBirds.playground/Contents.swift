/*
 Migratory Birds
 */
import Foundation

func migratoryBirds(arr: [Int]) -> Int {
  let countedSet = NSCountedSet(array: arr)
  return countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) } as! Int
}
