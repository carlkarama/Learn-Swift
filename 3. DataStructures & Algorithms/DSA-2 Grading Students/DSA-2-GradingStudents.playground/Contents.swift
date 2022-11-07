import Foundation

   
/**
 * @source - https://www.hackerrank.com/challenges/grading/problem
 */

func gradingStudents(grades: [Int]) -> [Int] {
    
    // Write your code here
    var finalGrades = [Int]()
    
    for grade in grades {
        let nextMultiple = (grade - (grade % 5)) + 5
        let remainder = nextMultiple - grade
        if ((remainder < 3) && (grade >= 38)) {
            print("Grade: \(grade), Final Grade: \(nextMultiple), Remainder: \(remainder)")
            finalGrades.append(nextMultiple)
        }
        
        if remainder >= 3 {
            finalGrades.append(grade)
        }
        
        if grade < 38 {
            finalGrades.append(grade)
        }
    }

    return finalGrades
}


var results:[Int] = [28, 44, 67, 93]

print(gradingStudents(grades: results))
