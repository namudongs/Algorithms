import Foundation

func solution() {
    var current = 0, result = 0
    let arr = (0..<10).map { _ in
        readLine()!.split(separator: " ").compactMap { Int($0) }
    }
    
    for part in arr {
        current -= part[0]
        current += part[1]
        
        if current > result { result = current }
    }
    
    print(result)
}

solution()