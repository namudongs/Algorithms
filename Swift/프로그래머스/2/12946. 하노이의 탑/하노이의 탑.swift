import Foundation

func solution(_ n: Int) -> [[Int]] {
    var ans = [[Int]]()
    
    func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int) {
        if n == 1 {
            ans.append([start, end])
            return
        }
        
        // 1단계: n-1개의 원판을 시작 기둥에서 중간 기둥으로 옮김
        hanoi(n-1, start, end, mid)
        
        // 2단계: 제일 큰 원판을 마지막 기둥으로 옮김
        ans.append([start, end])
        
        // 3단계: n-1개의 원판을 중간 기둥에서 시작 기둥으로 옮김
        hanoi(n-1, mid, start, end)
    }
    
    hanoi(n, 1, 2, 3)
    return ans
}
