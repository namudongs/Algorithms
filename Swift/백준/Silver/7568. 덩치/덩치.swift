import Foundation

func b7568() {
    let n = Int(readLine()!)!
    let people = (0..<n).map { _ in
        readLine()!.split(separator: " ").map { Int($0)! }
    }
    
    var ranks = [Int](repeating: 1, count: n)
    
    // 각 사람마다 모든 다른 사람과 비교
    for i in 0..<n {
        for j in 0..<n {
            if i == j { continue } // 자기 자신과는 비교 안함
            
            // i번째 사람이 j번째 사람보다 덩치가 작은지 확인
            if people[i][0] < people[j][0] && people[i][1] < people[j][1] {
                ranks[i] += 1
            }
        }
    }
    
    print(ranks.map { String($0) }.joined(separator: " "))
}

b7568()