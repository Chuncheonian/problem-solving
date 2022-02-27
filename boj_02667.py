# 2022.02.28
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2667

n = int(input())

matrix = [list(map(int, input())) for _ in range(n)]
visited = [[0] * n for _ in range(n)]
dr, dc = [0, -1, 0, 1], [1, 0, -1, 0]
cnt = 0

def dfs(x, y):
    global cnt
    if x < 0 or x >= n or y < 0 or y >= n:
        return False

    if matrix[x][y] == 1:
        cnt += 1
        matrix[x][y] = 0
        for i in range(4):
            nx = x + dr[i]
            ny = y + dc[i]
            dfs(nx, ny)
        return True

result = []
for i in range(n):
    for j in range(n):
        if dfs(i, j):
            result.append(cnt)
            cnt = 0

print(len(result))
result.sort()
for elem in result:
    print(elem)