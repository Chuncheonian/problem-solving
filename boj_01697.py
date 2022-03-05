# 2022.03.05
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1697

from collections import deque

n, k = map(int, input().split())

def bfs(start, end):
    visited = [0] * (100_000 + 1)
    queue = deque([start])

    while queue:
        cur = queue.popleft()

        if cur == end:
            return visited[cur]

        for next in (cur-1, cur+1, cur*2):
            if 0 <= next <= 100_000 and not visited[next]:
                visited[next] = visited[cur] + 1
                queue.append(next)

print(bfs(n, k))