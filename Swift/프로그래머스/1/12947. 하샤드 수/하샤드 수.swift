func solution(_ x:Int) -> Bool {
    let sum = String(x).reduce(0) { $0 + Int(String($1))! }
    
    if x % sum == 0 { return true }
    
    return false
}