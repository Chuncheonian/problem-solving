# 2022.03.07
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/4963

from collections import deque

def bfs(i, j):
    queue = deque()
    queue.append([i, j])

    while queue:
        x, y = queue.popleft()

        for i in range(len(dr)):
            nx = x + dr[i]
            ny = y + dc[i]

            if 0 <= nx < h and 0 <= ny < w:
                if matrix[nx][ny] == 1:
                    matrix[nx][ny] = 0
                    queue.append([nx, ny])

dr = [0, -1, -1, -1, 0, 1, 1, 1]
dc = [1, 1, 0, -1, -1, -1, 0, 1]
island_arr = []

while True:
    w, h = map(int, input().split())

    if w == 0 and h == 0:
        break

    matrix = [list(map(int, input().split())) for _ in range(h)]
    island = 0
    
    for i in range(h):
        for j in range(w):
            if matrix[i][j] == 1:
                bfs(i, j)
                island += 1

    island_arr.append(island)

for elem in island_arr:
    print(elem)