import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    // 오름차순으로 정렬된 배열 선언
    let sorted = d.sorted(by: <)
    
    // 현재 예산 선언
    var nowBudget = 0
    
    // 결과 카운트 선언
    var count = 0
    
    for i in sorted {
        nowBudget += i
        count += 1
        if nowBudget > budget { 
            return count-1 
        }
    }
    
    return count
}