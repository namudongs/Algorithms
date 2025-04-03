import Foundation

func solution() {
    let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    let n = input[0], k = input[1] - 1
    
    var result = [Int]()
    
    for i in 1...n {
        if n % i == 0 {
            result.append(i)
        }
    }
    
    guard result.count > k else { print(0); return }
    print(result.sorted(by: <)[k])
}

solution()