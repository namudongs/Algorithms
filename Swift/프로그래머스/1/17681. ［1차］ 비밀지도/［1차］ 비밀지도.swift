func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    func toBinary(_ num: Int) -> String {
        var binary = String(num, radix: 2)
        while binary.count < n {
            binary = "0" + binary
        }
        return binary
    }
    
    let radix1 = arr1.map { toBinary($0) }
    let radix2 = arr2.map { toBinary($0) }
    
    for (b1, b2) in zip(radix1, radix2) {
        var row = ""
        
        for i in 0..<n {
            let index1 = b1.index(b1.startIndex, offsetBy: i)
            let index2 = b2.index(b2.startIndex, offsetBy: i)
            
            if b1[index1] == "1" || b2[index2] == "1" {
                row += "#"
            } else {
                row += " "
            }
        }
        
        answer.append(row)
    }
    
    return answer
}

/*
n은 한 변의 길이가 n인 정사각형 배열
지도 1과 2 중 하나라도 벽인 부분은 전체 지도에서도 벽
두 지도 모두 공백이라면 전체 지도에서도 공백

각각 정수 배열로 암호화
암호화된 배열은 각 가로줄에서 벽 부분을 1, 공백을 0으로 부호화했을 때 얻어지는 이진수 값 배열

그렇다면, arr1과 arr2의 정수를 2진수로 변환해야 함.
2진수로 변환하고, 변환한 2진수의 자릿수는 n임.
각 지도를 2진수로 변환한 뒤, 각 지도의 2진수 문자열 배열을 만들어 저장. 
(ex: "01001", "10100", "11100", "10010", "01011")
두 지도를 함께 순회하며 각 가로줄을 비교, 
하나라도 "#"이면 "#"을, 둘 다 공백이면 공백을 문자열에 추가.
각 가로줄을 순회하여 나온 문자열을 결과 배열에 추가하고 모두 순회하면 결과 반환.
*/