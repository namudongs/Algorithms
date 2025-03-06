import Foundation

func isPalindrome(_ chars: [Character], _ start: Int, _ end: Int ) -> Bool {
    var left = start
    var right = end
    
    while left < right {
        if chars[left] != chars[right] {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
}

func canFormPalindromeByRemovingOneChar(_ s: String) -> Int {
    let chars = Array(s)
    var left = 0
    var right = chars.count - 1
    
    while left < right {
        if chars[left] == chars[right] {
            left += 1
            right -= 1
        } else {
            if isPalindrome(chars, left+1, right) || isPalindrome(chars, left, right-1) {
                return 1
            }
            
            return 2
        }
    }
    
    return 0
    
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!
    print(canFormPalindromeByRemovingOneChar(input))
}
