# 2022.02.26
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2606

from collections import defaultdict

computer_cnt = int(input())
edge_cnt = int(input())
adjacency_list = defaultdict(list)

# 무방향그래프 인접리스트 채우기
for i in range(1, edge_cnt+1):
    vertex1, vertex2 = map(int, input().split())
    adjacency_list[vertex1].append(vertex2)
    adjacency_list[vertex2].append(vertex1)

def dfs(graph, vertex, visited=[]):
    visited.append(vertex)

    for node in graph[vertex]:
        if node not in visited:
            dfs(graph, node, visited)

    return visited

print(len(dfs(adjacency_list, 1)) - 1)