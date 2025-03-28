import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var answer = 0
    var current = n
    
    while current >= a {
        let newBottle = (current / a) * b
        answer += newBottle
        current = (current % a) + newBottle
    }
    
    return answer
}