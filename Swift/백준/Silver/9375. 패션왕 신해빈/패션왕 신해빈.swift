import Foundation

let cases = Int(readLine()!)!

for _ in 0..<cases {
  let n = Int(readLine()!)!
  var clothes = [String: Int]()

  for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let category = input[1]

    if clothes.keys.contains(category) {
      clothes[category]! += 1
    } else {
      clothes[category] = 1
    }
  }

  var result = 1
  for count in clothes.values {
    result *= count + 1
  }
  result -= 1

  print(result)
}
