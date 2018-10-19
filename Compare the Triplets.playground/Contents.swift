/*
 Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.

 We define the rating for Alice's challenge to be the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge to be the triplet b = (b[0], b[1], b[2]) .

 Your task is to find their comparison points by comparing  with ,  with , and  with .

 If a[i] > b[i], then Alice is awarded 1 point.
 If a[i] < b[i], then Bob is awarded 1 point.
 If a[i] = b[i], then neither person receives a point.
 Comparison points is the total points a person earned.

 Given a and b, determine their respective comparison points.

 For example,  and . For elements , Bob is awarded a point because . For the equal elements  and , no points are earned. Finally, for elements ,  so Alice receives a point. Your return array would be  with Alice's score first and Bob's second.


 Output Format

 Return an array of two integers denoting the respective comparison points earned by Alice and Bob.

 Sample Input 0
 5 6 7
 3 6 10

 Sample Output 0
 1 1

 from hackerrank.com
 */

// first try
func compareTriplets(a: [Int], b: [Int]) -> [Int] {

  var points = [Int]()
  var aPoint = 0
  var bPoint = 0

  for i in 0..<a.count {
    guard a[i] != b[i] else { continue }
    a[i] > b[i] ? (aPoint += 1) : (bPoint += 1)
  }

  points.insert(aPoint, at: 0)
  points.insert(bPoint, at: 1)

  return points
}

// second try

func compareTriplets2(a: [Int], b: [Int]) -> [Int] {

  var aPoint = 0
  var bPoint = 0

  for i in 0..<a.count {
    guard a[i] != b[i] else { continue }
    a[i] > b[i] ? (aPoint += 1) : (bPoint += 1)
  }

  return [aPoint, bPoint]
}

