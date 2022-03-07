# 2022.03.07
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2468

from collections import deque

def bfs(i, j, visited, criteria):
    queue = deque()
    queue.append([i, j])
    visited[i][j] = 1

    while queue:
        x, y = queue.popleft()

        for k in range(4):
            nx = x + dr[k]
            ny = y + dc[k]
            if 0 <= nx < n and 0 <= ny < n:
                # 방문하지 않았으면서 안전영역인 경우
                if visited[nx][ny] == 0 and matrix[nx][ny] >= criteria:
                    visited[nx][ny] = 1
                    queue.append([nx, ny])

n = int(input())

matrix = [list(map(int, input().split())) for _ in range(n)]
matrix_min = min(map(min, matrix))
matrix_max = max(map(max, matrix))

dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]
safe_area = []

for criteria in range(matrix_min, matrix_max+1):
    count = 0
    visited = [[0] * n for _ in range(n)]
    for i in range(n):
        for j in range(n):
            if visited[i][j] == 0 and matrix[i][j] >= criteria:
                bfs(i, j, visited, criteria)
                count += 1
    safe_area.append(count)

print(max(safe_area))