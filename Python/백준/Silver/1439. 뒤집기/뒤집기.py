# 그룹으로 구분해서 찾기
def solution(s):
    count_0 = 0
    count_1 = 0

    if s[0] == '0':
        count_0 += 1
    else:
        count_1 += 1

    for i in range(1, len(s)):
        if s[i] != s[i-1]:
            if s[i] == '0':
                count_0 += 1
            else:
                count_1 += 1

    return print(min(count_0, count_1))

S = input().strip()
solution(S)

