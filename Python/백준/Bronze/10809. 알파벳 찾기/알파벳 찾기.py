import sys

def solution(word):
    arr = [-1] * 26
    point = 0

    for char in word:
        point += 1

        for i in range(0, len(arr)):
            if i == ord(char) - ord('a'):
                if arr[ord(char) - ord('a')] == -1:
                    arr[ord(char) - ord('a')] = point - 1

    return arr

word = sys.stdin.readline().rstrip()
print(*solution(word))