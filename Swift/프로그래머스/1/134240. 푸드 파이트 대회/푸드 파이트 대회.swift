import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    
    for (i, v) in food.enumerated() {
        if v % 2 == 0 {
            result += String(repeating: "\(i)", count: v / 2)
        } else {
            result += String(repeating: "\(i)", count: (v-1) / 2)
        }
    }
    
    return "\(result)0\(String(result.reversed()))"
}