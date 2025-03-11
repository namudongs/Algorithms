func solution(_ n:Int) -> Int {
    var resultArr = [1]
    
    if n == 0 || n == 1 {
        switch n {
            case 0:
            return 0
            case 1:
            return 1
            default:
            return 0
        }
    }
    
    for i in 2..<n {
        if n % i == 0 {
            resultArr.append(i)
        }
    }
    
    resultArr.append(n)
    
    return resultArr.reduce(0) { $0 + $1 }
}