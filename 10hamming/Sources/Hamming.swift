//Solution goes in Sources
import Foundation

struct Hamming {
    
    static func compute(_ strand1: String, against strand2: String) -> Int? {
        
        // make sure strands are the same length
        guard strand1.characters.count == strand2.characters.count else { return nil }
        
        var hammingCount: Int = 0
        var currentGene: Int = 0
        
        let strand1Array = Array(strand1.characters)
        let strand2Array = Array(strand2.characters)
        
        for gene in strand1Array {
            if gene != strand2Array[currentGene] {
                hammingCount += 1
            }
            currentGene += 1
        }
        
        return hammingCount
        
    }
}
