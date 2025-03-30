import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divisors = [Int](repeating: 0, count: number + 1)
    
    for i in 1...number {
        for j in stride(from: i, through: number, by: i) {
            divisors[j] += 1
        }
    }
    
    var result = 0
    
    for i in 1...number {
        let count = divisors[i]
        result += count > limit ? power : count
    }
    
    return result
}