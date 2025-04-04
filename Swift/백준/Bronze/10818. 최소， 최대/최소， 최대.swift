import Foundation

func solution() {
    let _ = Int(readLine()!) ?? 0
    let arr = readLine()!.split(separator: " ").compactMap { Int($0)! }
    
    print("\(arr.min()!) \(arr.max()!)")
}

solution()