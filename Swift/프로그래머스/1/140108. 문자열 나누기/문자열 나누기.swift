import Foundation

func solution(_ s: String) -> Int {
  var group = Array(s)
  var result = 0
  
  while !group.isEmpty {
    var x = group[0]
    var xCount = 0
    var notXcount = 0
    
    var i = 0
    while i < group.count {
      if group[i] == x {
        xCount += 1
      } else {
        notXcount += 1
      }
      
      if xCount == notXcount {
        result += 1
        group.removeFirst(i+1)
        if i == group.count {
          i = 0
        }
        break
      }
      
      i += 1
    }
    
    if i == group.count {
      result += 1
      break
    }
  }
  
  return result
}