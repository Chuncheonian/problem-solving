# 2022.02.27
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2178

from collections import deque

n, m = map(int, input().split())

matrix = [list(map(int, input())) for _ in range(n)]
dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]

def bfs(x, y):
    queue = deque()
    queue.append((x, y))

    while queue:
        x, y = queue.popleft()

        for i in range(4):
            nx = x + dr[i]
            ny = y + dc[i]

            if nx < 0 or nx >= n or ny < 0 or ny >= m:
                continue
            if matrix[nx][ny] == 0:
                continue
            if matrix[nx][ny] == 1:
                queue.append((nx, ny))
                matrix[nx][ny] = matrix[x][y] + 1
    return matrix[n-1][m-1]

print(bfs(0, 0))