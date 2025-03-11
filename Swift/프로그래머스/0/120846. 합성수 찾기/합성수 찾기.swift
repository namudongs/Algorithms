import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    for i in 1...n {
        if measureCounts(i) >= 3 {
            result += 1
        }
    }
    
    
    return result
}

func measureCounts(_ val: Int) -> Int {
    var arr = [Int]()
    
    for i in 1...val {
        if val % i == 0 {
            arr.append(i)
        }
    }
    
    return arr.count
}