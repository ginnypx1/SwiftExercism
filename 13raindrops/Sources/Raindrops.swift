//Solution goes in Sources
import Foundation

class Raindrops {
    
    var testNumber: Int
    
    var sounds: String {
        var result: String = ""
        if testNumber%3 == 0 {
            result += "Pling"
        }
        if testNumber%5 == 0 {
            result += "Plang"
        }
        if testNumber%7 == 0 {
            result += "Plong"
        }
        return (result != "") ? result : "\(testNumber)"
    }
    
    init(_ testNumber: Int) {
        self.testNumber = testNumber
    }
    
}
