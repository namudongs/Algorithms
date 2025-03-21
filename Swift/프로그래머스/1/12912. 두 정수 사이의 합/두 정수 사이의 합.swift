func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int64 = 0
    var arr = [Int]()
    
    arr.append(a)
    arr.append(b)
    arr.sort(by: <)
    
    for i in arr[0]...arr[1] {
        result += Int64(i)
    }
    
    return result
}