import Foundation

   
/**
 * @source - https://www.hackerrank.com/challenges/grading/problem
 */

func gradingStudents(grades: [Int]) -> [Int] {
    
    // Write your code here
    var tempArray = grades
    
    for grade in grades {
        if grade % 5 < 3 {
            tempArray.append(grade)
        }
        
        if grade < 38 {
            print("Failed")
        }
        
        if grade % 5 > 3 {
            print("Cant round")
        }
    }
    return tempArray
}
