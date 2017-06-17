//Solution goes in Sources
import Foundation

struct Grains {
    
    enum GrainsError: Error {
        case inputTooLow(String)
        case inputTooHigh(String)
    }
    
    static var total: Double {
        let checkerboardRange: [Int] = Array(1...64)
        var checkerboardRangeWithGrains: [Double] = []
        
        var grainsOnPreviousSquare: Double = 1
        
        for eachSquare in checkerboardRange {
            if eachSquare == 1 {
                checkerboardRangeWithGrains.append(1)
            } else {
                let grains = grainsOnPreviousSquare*2
                checkerboardRangeWithGrains.append(grains)
                grainsOnPreviousSquare = grains
            }
        }
        let totalGrains = checkerboardRangeWithGrains.reduce(0) { $0 + $1 }
        return totalGrains
    }
    
    static func square(_ square: Int) throws -> Double {
        // handle error cases
        if square <= 0 {
            throw GrainsError.inputTooLow("Input[\(square)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        if square >= 65 {
            throw GrainsError.inputTooHigh("Input[\(square)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        var grainsLastSquare: Double = 1
        
        for i in 1...square {
            if i == 1 {
                grainsLastSquare = 1
            } else {
                let grainsOnSquare = grainsLastSquare*2
                grainsLastSquare = grainsOnSquare
            }
        }

        return grainsLastSquare
    }
}
