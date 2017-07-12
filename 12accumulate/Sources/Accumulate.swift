//Solution goes in Sources
import Foundation


extension Array {
    func accumulate<T>(_ f: (Element) -> T) -> [T] {
        var results: [T] = []
        for each in self {
            results.append(f(each))
        }
        return results
    }
}
