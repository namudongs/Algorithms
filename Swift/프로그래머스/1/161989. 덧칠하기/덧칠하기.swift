func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var result = 0
    var i = 0
    
    while i < section.count {
        result += 1
        let start = section[i]
        
        while i < section.count && section[i] < start + m {
            i += 1
        }
    }
    
    return result
}