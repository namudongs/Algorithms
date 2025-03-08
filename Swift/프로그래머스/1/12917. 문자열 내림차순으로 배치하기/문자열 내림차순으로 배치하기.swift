func solution(_ s:String) -> String {
    var arr = s.compactMap { $0 }
    arr.sort(by: >)
    
    return arr.compactMap { String($0) }.joined()
}