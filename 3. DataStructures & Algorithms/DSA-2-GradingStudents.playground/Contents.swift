import Foundation

   
/**
 * @source - https://www.hackerrank.com/challenges/grading/problem
 */

func gradingStudents(grades: [Int]) -> [Int] {
    
    // Write your code here
    var tempArray = [Int]()
    
    for grade in grades {
        
        if (grade % 5 > 3) {
            let roundedGrade = grade % 5 + grade
            tempArray.append(roundedGrade)
        }
        
        if grade < 38 {
            print("Failed", grade)
        }
        
        if grade % 5 < 3 {
            print("Cant round", grade)
        }
    }
    return tempArray
}


var results:[Int] = [29, 44, 69, 91]

print(gradingStudents(grades: results))
