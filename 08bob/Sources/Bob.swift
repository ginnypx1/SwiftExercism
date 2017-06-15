//Solution goes in Sources

import Foundation


struct Bob {
    
    static func hey(_ input: String) -> String {
        
        // remove clutter (space, . ,)
        var formattedString = input.replacingOccurrences(of: ".", with: "")
        formattedString = formattedString.replacingOccurrences(of: ",", with: "")
        formattedString = formattedString.replacingOccurrences(of: " ", with: "")
        
        // check for empty string
        if formattedString == "" {
            return "Fine. Be that way!"
        // check for question
        } else if "?" == formattedString.characters.last! {
            formattedString = formattedString.replacingOccurrences(of: "?", with: "")
            if Int(formattedString) != nil {
                return "Sure."
            } else if formattedString == formattedString.uppercased() {
                return "Whoa, chill out!"
            } else {
                return "Sure."
            }
        // check for yelling
        } else if formattedString == formattedString.uppercased() {
            if Int(formattedString) != nil {
                return "Whatever."
            } else {
                return "Whoa, chill out!"
            }
        // return default
        } else {
            return "Whatever."
        }
    }
}
