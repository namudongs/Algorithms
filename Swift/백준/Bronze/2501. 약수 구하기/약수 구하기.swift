import Foundation

func solution() -> Int {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let n = input[0], k = input[1] // n의 약수 중 k번째로 작은 수 출력
    var result = [Int](repeating: 1, count: 1)

    for i in 2...n {
        if n % i == 0 {
            result.append(i)
        }
    }

    return result.count < k ? 0 : result[k-1]
}

print(solution())