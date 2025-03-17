import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var allSection = Array(repeating: true, count: n+1)
    for value in section {
        allSection[value] = false
    }
    
    var i = 1
    var result = 0
    
    while i < allSection.count {
        if allSection[i] == false {
            for j in i..<min(i+m, allSection.count) {
                allSection[j] = true
            }
            result += 1
        }
        
        i += 1
    }
    
    return result
}