//Solution goes in Sources

import Foundation

struct SumOfMultiples {
    
    static func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
        // create range of numbers
        let rangeOfNumbers: [Int] = Array(1..<limit)
        // iterate through rangeOfNumbers to find multiples
        var multipleArray: [Int] = []
        for num in multiples {
            if num == 0 {
                continue
            } else {
                for aNumber in rangeOfNumbers {
                    if aNumber % num == 0 {
                        multipleArray.append(aNumber)
                    }
                }
            }
        }
        // check to make sure multiples were found
        if multipleArray.isEmpty {
            return 0
        } else {
            // make a set of the multipleArray to remove duplicates
            let setOfMultiples = Set(multipleArray)
            // reduce the set into one sum
            let sumOfMultiples = setOfMultiples.reduce(0) {$0 + $1}
            return sumOfMultiples
        }
    }
}
