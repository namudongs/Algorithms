import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    let result_a = Int(String(a) + String(b))!
    let result_b = Int(String(b) + String(a))!
    
    return result_a >= result_b ? result_a : result_b
}