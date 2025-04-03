import Foundation

func solution() {
    var n = Int(readLine()!)!
    var result = 0
    
    /*
     5원짜리 동전을 최대한 많이 사용.
     나머지 금액을 2원짜리로 채울 수 있는지 확인.
     채울 수 없다면 5원짜리를 하나씩 줄이면서 채울 수 있는지 확인.
     */
    
    result = n / 5
    n -= result * 5
    
    while true {
        if n % 2 == 0 {
            result += n / 2
            break
        } else {
            result -= 1
            n += 5
            
            if result < 0 { print("-1"); return }
        }
    }
    
    print(result)
}

solution()