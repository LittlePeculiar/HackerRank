/*
 If a grade is equal or more than 38, and  If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
 */

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {

  var finalGrade = [Int]()

  grades.forEach { (grade) in

    guard grade >= 38 else { return (finalGrade.append(grade))}

    let gap = 5 - (grade % 5)
    if gap < 3 {
      finalGrade.append(grade + gap)
    } else {
      finalGrade.append(grade)
    }
  }
  return finalGrade
}

gradingStudents(grades: [58, 33, 38])
