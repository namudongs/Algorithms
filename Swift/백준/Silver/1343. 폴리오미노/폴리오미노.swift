import Foundation

func solution() {
    let board = String(readLine()!)
    
    var result = board.replacingOccurrences(of: "XXXX", with: "AAAA")
    result = result.replacingOccurrences(of: "XX", with: "BB")
    
    result.contains("X") ? print("-1") : print(result)
}

solution()