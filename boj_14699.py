# 2022.03.03
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/14699

from collections import defaultdict
import sys
sys.setrecursionlimit(10000)

n, m = map(int, input().split())

adjacency_graph = defaultdict(list)

height_arr = list(map(int, input().split()))

# 단방향 그래프 생성
for _ in range(m):
    vertex1, vertex2 = map(int, input().split())
    
    if height_arr[vertex1 - 1] < height_arr[vertex2 - 1]:
        adjacency_graph[vertex1].append(vertex2)
    else:
        adjacency_graph[vertex2].append(vertex1)

# DP 접근법
dp = [0] * (n+1)

def memoization(cur):
    if len(adjacency_graph[cur]) == 0:
        dp[cur] = 1
        return dp[cur]

    # 이미 방문했으면
    if dp[cur] != 0:
        return dp[cur]

    for i in range(len(adjacency_graph[cur])):
        dp[cur] = max(dp[cur], memoization(adjacency_graph[cur][i]) + 1)
    return dp[cur]
    
for i in range(1, n+1):
    memoization(i)

for i in range(1, n+1):
    print(dp[i])