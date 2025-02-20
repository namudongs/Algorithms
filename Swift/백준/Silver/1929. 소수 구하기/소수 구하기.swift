import Foundation

func isPrime(_ n: Int) -> Bool {
  
  if n < 2 {
    return false
  }
  
  let nsqrt = Int(sqrt(Double(n)))
  guard nsqrt >= 2 else { return true }
  
  for i in 2...nsqrt {
    if n % i == 0 {
      return false
    }
  }
  
  return true
}

func solution(s: [Int]) {
  let M = s[0], N = s[1]
  
  for num in M...N {
    if isPrime(num) {
      print(num)
    }
  }
  
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
solution(s: input)
