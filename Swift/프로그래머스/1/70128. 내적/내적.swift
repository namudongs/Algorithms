import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let result = zip(a, b).map { $0 * $1 }.reduce(0) { $0 + $1 }
    
    return result
}