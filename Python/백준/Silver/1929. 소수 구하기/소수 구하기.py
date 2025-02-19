def solution():
    # 입력: M과 N이 공백으로 구분되어 주어진다.
    M, N = map(int, input().split())
    # M = 3, N = 16

    # 소수는 2 이상의 수이므로, 만약 M이 2보다 작으면 2부터 시작
    if M < 2:
        M = 2

    # [M, N] 구간에 해당하는 숫자들이 소수인지 여부를 저장하는 리스트
    # 리스트의 인덱스 0은 실제 숫자 M에 해당합니다.
    is_prime = [True] * (N - M + 1)

    # p는 2부터 시작하여, p의 제곱이 N 이하일 동안 진행
    p = 2
    while p * p <= N:
        # [M, N] 범위 내에서 p의 배수를 제거하기 위한 시작점 계산
        # 1. p*p는 에라토스테네스의 체에서 전통적으로 사용하는 시작점입니다.
        # 2. ((M + p - 1) // p) * p 는 M보다 크거나 같은 p의 첫 배수를 구하는 공식입니다.
        # 두 경우 중 더 큰 값부터 시작해야 [M, N] 범위 내에서 p의 배수를 제거할 수 있습니다.
        start = max(p * p, ((M + p - 1) // p) * p)

        # start부터 N까지 p 간격으로 반복하며, 소수가 아닌 것으로 표시
        for multiple in range(start, N + 1, p):
            is_prime[multiple - M] = False  # 인덱스 보정: multiple-M은 리스트에서의 위치

        p += 1

    # 결과: is_prime 리스트가 True인 위치에 해당하는 실제 숫자들을 출력
    for i in range(M, N + 1):
        if is_prime[i - M]:
            print(i)

solution()