//Solution goes in Sources

import Foundation


class Nucleotide {
    
    enum DNA: String {
        case G
        case C
        case T
        case A
    }
    
    enum RNA: String {
        case C
        case G
        case A
        case U
    }
    
    let DNAString: String
    
    var complementOfDNA: String {
        let characterArray = DNAString.characters.map { String($0) }
        
        let rnaArray = characterArray.map({ (element: String) -> String in
            switch element {
            case DNA.G.rawValue:
                return RNA.C.rawValue
            case DNA.C.rawValue:
                return RNA.G.rawValue
            case DNA.T.rawValue:
                return RNA.A.rawValue
            case DNA.A.rawValue:
                return RNA.U.rawValue
            default:
                return ""
            }
        })
        
        return rnaArray.joined(separator: "")
    }
    
    init(_ DNAString: String) {
        self.DNAString = DNAString
    }
}
