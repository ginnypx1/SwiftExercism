//Solution goes in Sources
import Foundation

class Squares {

    let rangeMax: Int
    
    var sumOfSquares: Int {
        let setRange: [Int] = Array(1...rangeMax)
        // square all the numbers in range
        let squaredRange: [Int] = setRange.map { $0 * $0 }
        // add the results
        let sumSquares = squaredRange.reduce(0) { $0 + $1 }
        return sumSquares
    }
    
    var squareOfSums: Int {
        let setRange: [Int] = Array(1...rangeMax)
        // add all numbers in range
        let sumRange: Int = setRange.reduce(0) { $0 + $1 }
        // square the result
        let squaredSum = sumRange * sumRange
        return squaredSum
    }
        
    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
        
    init(_ rangeMax: Int) {
        self.rangeMax = rangeMax
    }

}
