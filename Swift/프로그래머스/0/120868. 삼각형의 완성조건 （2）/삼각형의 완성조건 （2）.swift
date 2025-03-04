import Foundation

func solution(_ sides:[Int]) -> Int {
    let a = sides[0]
    let b = sides[1]
    
    let bigX = a + b - max(a, b)
    let x = a + b - max(a, b) - 1
    
    return bigX + x
}