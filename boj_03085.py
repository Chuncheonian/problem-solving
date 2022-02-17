# 2022.02.17
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/3085

N = int(input())
arr = [list(input()) for _ in range(N)]
result = 0

# 현 2차원 배열에서 사탕 최대 갯수 반환
def check(arr):
    length = 1
    for i in range(N):
        row = 1
        col = 1
        for j in range(1, N):
            if arr[i][j] == arr[i][j-1]:
                row += 1
            else: 
                row = 1
 
            if arr[j][i] == arr[j-1][i]:
                col += 1
            else:
                col = 1
 
            length = max(row, col, length)
    return length

for i in range(N):
    for j in range(1, N):
        arr[i][j], arr[i][j-1] = arr[i][j-1], arr[i][j] # swap row
        tmp = check(arr)
        if result < tmp:
            result = tmp
        arr[i][j], arr[i][j-1] = arr[i][j-1], arr[i][j] # restore row

        arr[j][i], arr[j-1][i] = arr[j-1][i], arr[j][i] # swap col
        tmp = check(arr)
        if result < tmp:
            result = tmp
        arr[j][i], arr[j-1][i] = arr[j-1][i], arr[j][i] # restore col

print(result)