//Solution goes in Sources
import Foundation

class DNA {
    
    var nucleotideFrequency: [String: Int] = ["A": 0, "T": 0, "C": 0, "G": 0]
    
    init?(strand: String?) {
        let strandArray = strand?.uppercased().characters.map{ String($0) }
        
        for nucleotide in strandArray! {
            if let previousCount = self.nucleotideFrequency[nucleotide] {
                self.nucleotideFrequency[nucleotide] = previousCount + 1
            } else {
                return nil
            }
        }
    }
    
    func count(_ nucleotide: String) -> Int {
        return self.nucleotideFrequency[nucleotide]!
    }
    
    func counts() -> [String: Int] {
        return nucleotideFrequency
    }
}
