import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result = [Int]() // 매일 최하의 점수를 저장하는 배열
    var curList = [Int]() // 현재 날짜까지의 명예의 전당
    // 0부터 스코어 목록의 끝까지 반복
    for i in 0..<score.count {
        // curList에 i 추가
        curList.append(score[i])
        // curList의 길이가 k를 넘는지 확인하고,
        if curList.count > k {
            // 넘는다면 가장 작은 값을 제거
            let min = curList.min()!
            let minIdx = curList.firstIndex(of: min)!
            curList.remove(at: minIdx)
        }
        
        // 가장 작은 값 result 배열에 추가
        result.append(curList.min()!)
    }
    
    return result
}
