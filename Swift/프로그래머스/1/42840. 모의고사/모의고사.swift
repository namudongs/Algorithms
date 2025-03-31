import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let answer = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    var point = [0, 0, 0]
    
    for (idx, ans) in answers.enumerated() {
        if ans == answer[0][idx % 5] { point[0] += 1 }
        if ans == answer[1][idx % 8] { point[1] += 1 }
        if ans == answer[2][idx % 10] { point[2] += 1 }
    }
    
    return point.indices.filter { point[$0] == point.max()! }.map { $0 + 1 }
}