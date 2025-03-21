import Foundation

func solution(_ s:String) -> Bool {
    var count = (p: 0, y: 0)
    var arr = Array(s.lowercased())
    
    for str in arr {
        if str == "p" {
            count.p += 1
        } else if str == "y" {
            count.y += 1
        }
    }
    
    if count.p == count.y { return true }
    else if count.p == 0 && count.y == 0 { return true }
    else { return false }
    
}