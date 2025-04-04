import Foundation

func solution() {
    let n = Int(readLine()!)!
    var prev = 0, curr = 1
    
    if n == 0 { print(0); return }
    
    for _ in 1..<n {
        let tmp = prev + curr
        prev = curr
        curr = tmp
    }
    
    print(curr)
}

solution()