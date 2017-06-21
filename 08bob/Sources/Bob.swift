//Solution goes in Sources

import Foundation


struct Bob {
    
    static func hey(_ input: String) -> String {
        // remove spaces
        var formattedString = input.trimmingCharacters(in: NSCharacterSet.whitespaces)
        formattedString = formattedString.replacingOccurrences(of: ".", with: "")
        formattedString = formattedString.replacingOccurrences(of: ",", with: "")
        
        if formattedString == "" {
            return "Fine. Be that way!"
        } else if "?" == formattedString.characters.last! {
            formattedString = formattedString.replacingOccurrences(of: "?", with: "")
            if Int(formattedString) != nil {
                return "Sure."
            } else if formattedString == formattedString.uppercased() {
                return "Whoa, chill out!"
            } else {
                return "Sure."
            }
            
            
        } else if formattedString == formattedString.uppercased() {
            if Int(formattedString) != nil {
                return "Whatever."
            } else {
                return "Whoa, chill out!"
            }
            
            
        } else {
            return "Whatever."
        }
    }
}
