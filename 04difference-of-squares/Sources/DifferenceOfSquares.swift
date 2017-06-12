//Solution goes in Sources
import Foundation

// MARK: - Helper Methods

func findSumOfSquares(_ rangeMax: Int) -> Int {
    let setRange: [Int] = Array(1...rangeMax)
    // square all the numbers in range
    let squaredRange: [Int] = setRange.map { $0 * $0 }
    // add the results
    let sumSquares = squaredRange.reduce(0) { $0 + $1 }
    return sumSquares
}

func findSquareOfSums(_ rangeMax: Int) -> Int {
    let setRange: [Int] = Array(1...rangeMax)
    // add all numbers in range
    let sumRange: Int = setRange.reduce(0) { $0 + $1 }
    // square the result
    let squaredSum = sumRange * sumRange
    return squaredSum
}

// MARK: - Squares

class Squares {
    
    var sumOfSquares: Int
    var squareOfSums: Int
    
    var differenceOfSquares: Int {
        return self.squareOfSums - self.sumOfSquares
    }
    
    init(_ rangeMax: Int) {
        self.sumOfSquares = findSumOfSquares(rangeMax)
        self.squareOfSums = findSquareOfSums(rangeMax)
    }
}
