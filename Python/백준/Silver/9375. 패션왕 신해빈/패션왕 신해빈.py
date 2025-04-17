testCases = int(input()) # 테스트 케이스 입력

for _ in range(testCases):
    n = int(input()) # 해빈이가 가진 의상의 수 입력
    clothes = {} # 종류별 의상 개수를 셀 딕셔너리

    # n개의 의상 입력 처리
    for _ in range(n):
        name, category = input().split()
        if category in clothes:
            clothes[category] += 1
        else:
            clothes[category] = 1

    # 모든 조합 계산
    result = 1
    for count in clothes.values():
        result *= (count + 1)
    result -= 1

    print(result)