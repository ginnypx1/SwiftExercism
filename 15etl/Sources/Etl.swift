//Solution goes in Sources
import Foundation

struct ETL {
    
    static func transform(_ dict: [Int: [String]]) -> [String: Int] {
        
        var newDict: [String: Int] = [:]
        
        for (key, value) in dict {
            for letter in value {
                newDict[letter.lowercased()] = key
            }
        }
        
        return newDict
    }
    
}
