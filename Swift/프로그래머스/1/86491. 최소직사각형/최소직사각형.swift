import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    /*
    1. 모든 명함의 긴 쪽을 가로로, 짧은 쪽을 세로로 정렬한다.
    2. 정렬된 명함 가로의 최댓값과 세로의 최댓값을 곱해서 반환한다.
    */
    let sorted = sizes.map { $0.sorted() }
    let width = sorted.map { $0[0] }
    let height = sorted.map { $0[1] }
    
    return width.sorted(by: >)[0] * height.sorted(by: >)[0]
}