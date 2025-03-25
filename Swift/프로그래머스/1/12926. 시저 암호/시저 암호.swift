func solution(_ s:String, _ n:Int) -> String {
    return String(s.map { char in
        guard char.isLetter else { return char }
        
        let base = char.isUppercase ? UInt8(65) : UInt8(97)
        let shifted = ((char.asciiValue! - base) + UInt8(n % 26)) % 26
        
        return Character(UnicodeScalar(base + shifted))
    })
}