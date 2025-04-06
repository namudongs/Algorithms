import Foundation

func b1978() -> Int {
    let _ = readLine()!
    let n = readLine()!.split(separator: " ").map { isPrime(Int($0)!) }
    return n.filter { $0 == true }.count
}

func isPrime(_ n: Int) -> Bool {
    if n <= 1 { return false }
    else if n <= 3 { return true }

    let sqrtVal = Int(sqrt(Double(n)))
    
    for i in 2...sqrtVal {
        if n % i == 0 {
            return false
        }
    }

    return true
}

print(b1978())