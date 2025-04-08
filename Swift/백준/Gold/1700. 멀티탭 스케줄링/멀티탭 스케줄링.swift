import Foundation

let tabCount = readLine()!.split(separator: " ").compactMap { Int($0) }[0]
let tabOrder = readLine()!.split(separator: " ").compactMap { Int($0) }
var currentTab = Set<Int>() // 세트가 현재 탭 상황
var count = 0

for index in 0..<tabOrder.count {
    // 이미 꽂혀 있다면 넘어가기
    if currentTab.contains(tabOrder[index]) {
        continue
    }

    if currentTab.count < tabCount {
        // 현재 탭이 비어있다면 그냥 꽂기
        currentTab.insert(tabOrder[index])
    } else if currentTab.count >= tabCount {
        // 현재 탭이 가득 차 있고 꽂혀 있지도 않다면
        var plugToRemove: Int?
        var latestUseIndex = -1

        for plug in currentTab {
            // 미래에 사용되지 않는 경우 이 플러그 선택
            if !tabOrder[(index+1)...].contains(plug) {
                plugToRemove = plug
                break
            }

            // 미래에 사용되는 경우, 가장 나중에 사용되는 플러그 찾기
            let futureUses = tabOrder[(index+1)...]
            if let nextUseIndex = futureUses.firstIndex(of: plug) {
                if nextUseIndex > latestUseIndex {
                    latestUseIndex = nextUseIndex
                    plugToRemove = plug
                }
            }
        }

        currentTab.remove(plugToRemove ?? currentTab.first!)
        count += 1
        currentTab.insert(tabOrder[index])
    }
}

print(count)