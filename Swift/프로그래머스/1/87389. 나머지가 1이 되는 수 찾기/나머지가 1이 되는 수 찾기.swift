import Foundation

func solution(_ n:Int) -> Int {
    var result = 1_000_000
    for x in 2...n {
        if n % x == 1 && x < result {
            result = x
        }
    }
    
    return result
}