import Foundation

struct Student {
    
    var studentID: Int
    var firstName: String
    var lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    init(studentID: Int, firstName: String, lastName: String) {
        self.studentID = studentID
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct Subject {
    
    var subjectID: Int
    var subject: String
    var course: String {
        "\(subjectID) \(subject)"
    }
    
    init(subjectID: Int, subject: String) {
        self.subjectID = subjectID
        self.subject = subject
    }
}

struct Score {
    
    var scoreID: Int
    var score: Int
    var mark: String {
        "\(scoreID) \(score)"  
    }
}

