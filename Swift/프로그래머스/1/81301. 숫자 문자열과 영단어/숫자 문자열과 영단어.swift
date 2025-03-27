import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let num = [
        0: "zero",
        1: "one",
        2: "two",
        3: "three",
        4: "four",
        5: "five",
        6: "six",
        7: "seven",
        8: "eight",
        9: "nine",
    ]
    
    for i in 0...9 {
        result = result.replacingOccurrences(of: num[i]!, with: "\(i)")
    }
    
    return Int(result) ?? 0
}