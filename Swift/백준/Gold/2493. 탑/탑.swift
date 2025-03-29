let n = Int(readLine()!)!
let tops = readLine()!.split(separator: " ").map { Int($0)! }
func solution(_ n: Int, _ tops: [Int]) -> String {
    var result = [Int](repeating: 0, count: n)
    var stack: [Int] = []
    
    for i in 0..<n {
        // 현재 탑보다 낮거나 같은 탑을 스택에서 제거
        while !stack.isEmpty && tops[stack.last!] <= tops[i] {
            stack.removeLast()
        }
        
        // 스택이 비어있지 않다면, 스택의 맨 위 탑이 왼쪽에서 첫 번째로 더 높은 탑
        if !stack.isEmpty {
            result[i] = stack.last! + 1  // 0-인덱스를 1-인덱스로 변환
        }
        
        // 현재 탑을 스택에 추가
        stack.append(i)
    }
    
    return result.map { String($0) }
        .joined(separator: " ")
}
print(solution(n, tops))