import Foundation

func solution(_ s:String) -> [Int] {
    var dict = Dictionary(uniqueKeysWithValues: Set(s).map { ($0, (0, false)) })
    var result = [Int]()
    
    for (i, c) in s.enumerated() {
        if dict[c]?.1 == true {
            result.append(i - dict[c]!.0)
        } else {
            result.append(-1)
        }
        dict[c]? = (i, true)
    }
    
    /*
    각 문자를 키로 한 딕셔너리를 활용 
    (Set을 활용해서 중복 문자 제거 후 키로 딕셔너리 생성)
    
    문자열을 순회하며 각 문자의 값에 등장 여부와 인덱스 저장
    현재 문자의 값이 이전에 등장했다면 -> 현재 인덱스에서 저장된 인덱스 빼고 결과 배열에 추가
    등장하지 않았다면 -> 결과 배열에 -1 추가
    
    1~3. 이전에 등장하지 않았으므로 -1 추가하고 딕셔너리에 등장 여부와 인덱스 저장
    4~6. 이전에 등장했으므로 인덱스 가져와 현재 인덱스에서 빼고 결과 배열에 추가
    */
    
    return result
}