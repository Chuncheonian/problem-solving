# 2022.03.06
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/5014

from collections import deque

# f, s, g, u, d
max_floor, start_floor, end_floor, up, down = map(int, input().split())

def bfs(f, s, g, u, d):
    visited = [0] * (f+1)
    queue = deque([s])

    while queue:
        cur_floor = queue.popleft()

        if cur_floor == g:
            return visited[cur_floor]

        for next in (cur_floor+u, cur_floor-d):
            if 0 < next <= f and not visited[next] and next != s:
                visited[next] = visited[cur_floor] + 1
                queue.append(next)
    return "use the stairs"

print(bfs(max_floor, start_floor, end_floor, up, down))