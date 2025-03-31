import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var sorted = score.sorted(by: >)
    var result = 0
    
    for i in stride(from: m-1, to: sorted.count, by: m) {
        let min = sorted[i]
        result += (min * m)
    }
    
    return result
}