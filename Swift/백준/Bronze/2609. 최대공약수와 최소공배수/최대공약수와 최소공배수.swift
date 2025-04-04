import Foundation

func solution() {
    let n = readLine()!.split(separator: " ").compactMap { Int($0) }
    if n.allSatisfy({ $0 == 0 }) { print("0 0"); return }
    
    print(최대공약수(n[0], n[1]))
    print(최소공배수(n[0], n[1]))
    
}

func 최소공배수(_ a: Int, _ b: Int) -> Int {
    return (a * b) / 최대공약수(a, b)
}

func 최대공약수(_ a: Int, _ b: Int) -> Int {
    var r = 0
    var a = a, b = b
    
    while b != 0 {
        r = a % b
        a = b
        b = r
    }
    
    return a
}

solution()
