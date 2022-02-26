# 2022.02.26
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1260

from collections import defaultdict
from collections import deque

vertex_cnt, edge_cnt, start_vertex = map(int, input().split())
adjacency_list = defaultdict(list)

# 인접 리스트 채우기
for _ in range(edge_cnt):
    vertex1, vertex2 = map(int, input().split())
    adjacency_list[vertex1].append(vertex2)
    adjacency_list[vertex2].append(vertex1)

# 인접 리스트 정렬
for i in range(1, vertex_cnt + 1):
    adjacency_list[i].sort()

def dfs(graph, vertex, visited=[]):
    visited.append(vertex)

    for node in graph[vertex]:
        if node not in visited:
            dfs(graph, node)

    return visited

def bfs(graph, start_vertex):
    visited = [start_vertex]
    queue = deque([start_vertex])

    while queue:
        vertex = queue.popleft()

        for v in graph[vertex]:
            if v not in visited:
                visited.append(v)
                queue.append(v)

    return visited
            
print(' '.join(map(str, dfs(adjacency_list, start_vertex))))
print(' '.join(map(str, bfs(adjacency_list, start_vertex))))