import Foundation

func b10870() {
    let n = Int(readLine()!)!
    
    print(fibonacci(n))
}

func fibonacci(_ num: Int) -> Int {
    if num <= 1 { return num }
    
    var a = 0, b = 1
    for _ in 2...num {
        let temp = a + b
        a = b
        b = temp
    }
    
    return b
}

b10870()