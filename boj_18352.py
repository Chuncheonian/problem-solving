# # 2022.02.27
# # Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# # https://www.acmicpc.net/problem/18352

import sys
from collections import deque

input = sys.stdin.readline

n, m, k, x = map(int, input().split())
arr = [[] for _ in range(n+1)]
visited = [False] * (n+1)
for _ in range(m):
    vertex1, vertex2 = map(int, input().split())
    arr[vertex1].append(vertex2)

visited[x] = True
answer = []
queue = deque()
queue.append([x, 0])

while queue:
    cur_v, cnt = queue.popleft()
    if cnt == k:
        answer.append(cur_v)

    elif cnt < k:
        for next_v in arr[cur_v]:
            if visited[next_v] == False:
                visited[next_v] = True
                queue.append([next_v, cnt+1])

if answer:
    answer.sort()
    for i in answer:
        print(i)
else:
    print(-1)