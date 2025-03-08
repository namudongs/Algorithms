func solution(_ n: Int64) -> Int64 {
    var arr = String(n).compactMap { $0.wholeNumberValue }
    arr.sort(by: >)
    let sorted = arr.compactMap { String($0) }.joined()
    
    
    return Int64(sorted) ?? 0
}
