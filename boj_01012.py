# 2022.03.14
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1012

from collections import deque

def bfs(i, j, graph):
    queue = deque()
    queue.append((i, j))
    graph[i][j] = 0
    
    while queue:
        x, y = queue.popleft()
        for k in range(4):
            nx = x + dr[k]
            ny = y + dc[k]
            if nx < 0 or nx >= m or ny < 0 or ny >= n:
                continue
            if graph[nx][ny] == 1:
                graph[nx][ny] = 0
                queue.append((nx, ny))

t = int(input())
dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]

for _ in range(t):
    m, n, k = map(int, input().split())
    matrix = [[0]*n for _ in range(m)]
    count = 0

    for _ in range(k):
        i, j = map(int, input().split())
        matrix[i][j] = 1
        
    for x in range(m):
        for y in range(n):
            if matrix[x][y] == 1:
                bfs(x, y, matrix)
                count += 1
    print(count)