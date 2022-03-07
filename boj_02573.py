# 2022.03.07
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2573

from collections import deque
import copy
import sys
sys.setrecursionlimit(10000)

def bfs(x, y):
    global visited, temp_matrix

    queue = deque()
    queue.append((x, y))
    visited[x][y] = 1

    while queue:
        i, j = queue.popleft()
        for k in range(4):
            ni = i + dr[k]
            nj = j + dc[k]

            if 0 <= ni < n and 0 <= nj < m:

                # 주변이 바다이면서, 현 위치가 빙산인 경우
                if matrix[ni][nj] == 0 and temp_matrix[i][j] > 0:
                    temp_matrix[i][j] -= 1

                # 주변이 빙산이면서, 방문하지않은 빙산인 경우
                if matrix[ni][nj] > 0 and visited[ni][nj] == 0:
                    visited[ni][nj] = 1
                    queue.append((ni, nj))

n, m = map(int, input().split())
matrix = [list(map(int, input().split())) for _ in range(n)]

dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]

year = 0

while True:
    iceberg = 0  # 빙산 갯수
    temp_matrix = copy.deepcopy(matrix)  # 빙산 녹은 것을 바로 적용하지 않도록
    visited = [[0] * m for _ in range(n)]
    for i in range(n):
        for j in range(m):
            if matrix[i][j] != 0 and visited[i][j] == 0:  # 빙산이면서 방문하지 않은 경우
                bfs(i, j)
                iceberg += 1
    matrix = copy.deepcopy(temp_matrix)
    if iceberg >= 2:
        break
    if iceberg == 0:
        year = 0
        break
    year += 1

print(year)