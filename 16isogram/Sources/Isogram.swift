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
        var wordArray = Array(allLowercase.characters)
        var i = 0
        
        // remove each letter, check for a duplicate
        while i < wordArray.count {
            let letter: Character = wordArray.remove(at: 0)
            
            if wordArray.contains(letter) {
                return false
            }
            i = i+1
        }
        
        return true
    }
}
