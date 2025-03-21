func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    for ele in arr {
        if ele % divisor == 0 {
            result.append(ele)
        }
    }
    
    if result.isEmpty {
        result.append(-1)
    }
    
    return result.sorted()
}