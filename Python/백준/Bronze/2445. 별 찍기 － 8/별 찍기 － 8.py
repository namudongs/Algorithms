n = int(input())
stars = [int]

for i in range(1, n+1):
    print('*' * i + ' ' * ((n-i)*2) + '*' * i)

for i in range(n-1, 0, -1):
    print('*' * i + ' ' * ((n-i)*2) + '*' * i)