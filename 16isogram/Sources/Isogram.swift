//Solution goes in Sources
import Foundation

struct Isogram {
    
    static func isIsogram(_ word: String) -> Bool {
        // guard against empty string
        guard word != "" else {
            return true
        }
        
        // format the data
        let noSpaces = word.replacingOccurrences(of: " ", with: "")
        let noDashes = noSpaces.replacingOccurrences(of: "-", with: "")
        let allLowercase = noDashes.lowercased()
        
        // create a character array out of the word
        let wordArray = Array(allLowercase.characters)
        let wordSet = Set(wordArray)
        
        return wordArray.count == wordSet.count
    }
}
