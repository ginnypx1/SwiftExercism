//Solution goes in Sources

import Foundation


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

class Nucleotide {
    
    var complementOfDNA: String
    
    init(_ dnaString: String) {
        let characterArray = dnaString.characters.map { String($0) }
        // can map over again without making a new array
        var rnaArray: [String] = []
        for character in characterArray {
            switch character {
            case DNA.G.rawValue:
                rnaArray.append(RNA.C.rawValue)
            case DNA.C.rawValue:
                rnaArray.append(RNA.G.rawValue)
            case DNA.T.rawValue:
                rnaArray.append(RNA.A.rawValue)
            case DNA.A.rawValue:
                rnaArray.append(RNA.U.rawValue)
            default:
                rnaArray.append("")
            }
        }
        let rnaString = rnaArray.joined(separator: "")
        self.complementOfDNA = rnaString
    }
}
