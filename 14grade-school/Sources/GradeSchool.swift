//Solution goes in Sources
import Foundation


struct GradeSchool {
    
    var roster: [Int: [String]] = [:]
    
    var sortedRoster: [Int: [String]] {
        // sort the roster by grade level ascending
        get {
            var sortedRoster: [Int:[String]] = [:]
            for grade in roster.keys.sorted() {
                sortedRoster[grade] = roster[grade]!.sorted()
            }
            return sortedRoster
        }
    }
    
    mutating func addStudent(_ name: String, grade: Int) {
        // if grade exists, add student name
        if let gradeKey = roster[grade] {
            let newRoster = gradeKey + [name]
            roster.updateValue(newRoster, forKey: grade)
        } else {
        // or add the grade and name to the roster
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        // return the names of students in the grade
        if let studentRoster = roster[grade] {
            return studentRoster
        } else {
            return []
        }
    }
}
