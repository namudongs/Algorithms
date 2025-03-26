import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result = [Int]()
    
    for cmd in commands {
        let i = cmd[0] - 1
        let j = cmd[1] - 1
        let k = cmd[2] - 1
        
        result.append(
            Array(array[i...j])
            .sorted(by: <)[k])
    }
    
    return result
}