import Foundation

func solution(_ babbling:[String]) -> Int {
    let pronList = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    for word in babbling {
        if findWord(word, pronList) {
            count += 1
        }
    }
    
    return count
}

func findWord(_ word: String, _ pronList: [String]) -> Bool {
    var used = Set<String>()
    var remain = word
    
    while !remain.isEmpty {
        var found = false
        
        for pron in pronList {
            if remain.hasPrefix(pron) && !used.contains(pron) {
                used.insert(pron)
                remain = String(remain.dropFirst(pron.count))
                found = true
                break
            }
        }
        
        if !found {
            return false
        }
    }
    
    return true
}