import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice = 0
    for n in 1...count { totalPrice += price * n }
    if money < totalPrice {
        return Int64(totalPrice - money)
    }
    
    return 0
}