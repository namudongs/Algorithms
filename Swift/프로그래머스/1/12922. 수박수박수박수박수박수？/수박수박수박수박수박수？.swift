func solution(_ n:Int) -> String {
    var s = ""
    
    for i in 1...n {
        if s.suffix(1) == "수" {
            s += "박"
        } else {
            s += "수"
        }
    }
    
    return s
}