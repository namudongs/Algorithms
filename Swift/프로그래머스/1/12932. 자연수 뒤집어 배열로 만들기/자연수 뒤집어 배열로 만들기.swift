import Foundation

func solution(_ n:Int64) -> [Int] {
    let arr = String(n).compactMap { $0.wholeNumberValue }
    
    return arr.reversed()
}