import Foundation

func b2798() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    let _ = input[0], m = input[1]
    
    print(blackjack(m, arr))
}

func blackjack(_ m: Int, _ arr: [Int]) -> Int {
    var result = [[Int]]()
    var current = [Int]()
    
    func backtrack(_ start: Int, _ k: Int) {
        if k == 0 {
            result.append(current)
            return
        }
        
        for i in start..<arr.count {
            current.append(arr[i])
            backtrack(i + 1, k - 1)
            current.removeLast()
        }
    }
    
    backtrack(0, 3)
    
    return result.filter { $0.reduce(0, +) <= m }.map { $0.reduce(0, +) }.max()!
}

b2798()
