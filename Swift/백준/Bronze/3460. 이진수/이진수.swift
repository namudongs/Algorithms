if let t = Int(readLine()!) {
    for _ in 0..<t {
        if let n = Int(readLine()!) {
            let binary = String(n, radix: 2)
            let positions = binary.reversed().enumerated()
                .filter { $0.element == "1" }
                .map { String($0.offset) }
            
            print(positions.joined(separator: " "))
        }
    }
}