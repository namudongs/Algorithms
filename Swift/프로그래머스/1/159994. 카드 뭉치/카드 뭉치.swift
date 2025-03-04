import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var index1 = 0, index2 = 0
    
    for word in goal {
        if index1 < cards1.count && word == cards1[index1] {
            index1 += 1
        } else if index2 < cards2.count && word == cards2[index2] {
            index2 += 1
        } else {
            return "No"
        }
    }
    
    return "Yes"
}