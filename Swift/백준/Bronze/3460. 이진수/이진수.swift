import Foundation

func solution() {
    let t = Int(readLine()!)!
    let arr = (0..<t).map { _ in Int(readLine()!)! }
    
    let radixArr = (0..<arr.count).map { i in
        String(arr[i], radix: 2).reversed().map { String($0) }
    }
    
    for binary in radixArr {
        let result = binary.enumerated().filter {
            $0.element == "1"
        }.map {
            "\($0.offset)"
        }
        
        print(result.joined(separator: " "))
    }
}

solution()