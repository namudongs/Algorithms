import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let pLen = p.count
    guard let pNum = Int(p) else { return 0 }
    let tArr = Array(t)
    var count = 0
    
    for i in 0...tArr.count - pLen {
        let substring = String(tArr[i..<i+pLen])
        if let subNum = Int(substring), subNum <= pNum {
            count += 1
        }
    }
    
    return count
}