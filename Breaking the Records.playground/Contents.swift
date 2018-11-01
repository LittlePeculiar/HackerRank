/*
 Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.

 For example, assume her scores for the season are represented in the array scores = [12, 24, 10, 24] . Scores are in the same order as the games played. She would tabulate her results as follows:

 Given Maria's scores for a season, find and print the number of times she breaks her records for most and least points scored during the season.
 */

// 1st
func breakingRecords(scores: [Int]) -> [Int] {

  var result = [Int]()
  var highestCount: Int = 0
  var highestScore: Int = scores[0]
  var lowestCount: Int = 0
  var lowestScore: Int = scores[0]

  for i in 1..<scores.count {

    if scores[i] > highestScore {
      highestScore = scores[i]
      highestCount += 1
    } else if scores[i] < lowestScore {
      lowestScore = scores[i]
      lowestCount += 1
    }
  }

  result.insert(highestCount, at: 0)
  result.insert(lowestCount, at: 1)

  return result
}

breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])

// 2nd
func breakingRecords2(scores: [Int]) -> [Int] {

  var highestCount: Int = 0
  var highestScore: Int = scores[0]
  var lowestCount: Int = 0
  var lowestScore: Int = scores[0]

  for i in 1..<scores.count {

    if scores[i] > highestScore {
      highestScore = scores[i]
      highestCount += 1
    } else if scores[i] < lowestScore {
      lowestScore = scores[i]
      lowestCount += 1
    }
  }
  return [highestCount, lowestCount]
}

breakingRecords2(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
breakingRecords2(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
