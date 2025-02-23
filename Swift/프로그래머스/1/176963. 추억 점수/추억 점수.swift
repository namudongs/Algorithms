import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var result = [Int]()
    let resultDict = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    print(resultDict)
    
    for photoItem in photo {
        var resultTemp = 0
        
        photoItem.compactMap { pName in
            for (dName, dValue) in resultDict {
                if pName == dName {
                    resultTemp += dValue
                }
            }
        }
        
        result.append(resultTemp)
        resultTemp = 0
    }
    
    return result
}