import Foundation

func b1316(_ n: Int, _ arr: [String]) {
    var count = 0
    
    for part in arr {
        var set = Set<String>()
        /*
         ccazzzzbb
         이번 문자가 세트에 있는지 확인, 있으면 그룹 단어가 아니므로 다음 파트로 이동
         이번 문자랑 다음 문자랑 비교 ( c == c ) / 만약 마지막 문자라면 세트에 있는지 확인 후 카운트 증가
         같으면 그냥 넘어가기, 다르면 이번 문자는 세트에 추가
         */
        
        for strIdx in 0..<part.count {
            let current = part.index(part.startIndex, offsetBy: strIdx)
            if part.count == 1 { count += 1; break; }
            
            if strIdx == part.count-1 {
                if !set.contains(String(part[current])) { count += 1 }
                break
            }
            
            let next = part.index(after: current)
            
            if part[current] != part[next] {
                if set.contains(String(part[next])) { break }
                set.insert(String(part[current]))
            }
        }
    }
    
    print(count)
}

let n = Int(readLine()!)!
let arr = (0..<n).compactMap { _ in readLine() }

b1316(n, arr)

