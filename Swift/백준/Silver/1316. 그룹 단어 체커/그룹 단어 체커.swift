import Foundation

func isGroupWord(_ word: String) -> Bool {
    let chars = Array(word)
    var appeared = Set<Character>()
    var lastChar: Character? = nil
    
    for char in chars {
        if lastChar != char {
            // 새로운 문자가 등장했을 때
            if appeared.contains(char) {
                // 이전에 문자가 등장했으면 그룹 문자가 아님
                return false
            }
        }
        
        appeared.insert(char)
        lastChar = char
    }
    
    return true
}

func b1316(_ n: Int, _ arr: [String]) {
    print(arr.filter({isGroupWord($0)}).count)
}

let n = Int(readLine()!)!
let arr = (0..<n).compactMap { _ in readLine() }

b1316(n, arr)