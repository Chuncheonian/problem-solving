# 2021.07.01
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1080

N, M = map(int, input().split())

A = [list(map(int, input())) for _ in range(N)]
B = [list(map(int, input())) for _ in range(N)]

result = 0
row_count = N - 2
col_count = M - 2

for row in range(row_count):
    for col in range(col_count):
        if A[row][col] != B[row][col]:
            result += 1
            for change_row in range(row, row+3):
                for change_col in range(col, col+3):
                    A[change_row][change_col] = 1 - A[change_row][change_col]

for row in range(N):
    for col in range(M):
        if A[row][col] != B[row][col]:
            result = -1

print(result)