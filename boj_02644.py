# 2022.03.03
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2644

from collections import deque

person_cnt = int(input())

a, b = map(int, input().split())

edge_cnt = int(input())

adjacency_list = [[] for _ in range(person_cnt+1)]

# 양방향 인접리스트 생성
for _ in range(edge_cnt):
    vertex1, vertex2 = map(int, input().split())
    adjacency_list[vertex1].append(vertex2)
    adjacency_list[vertex2].append(vertex1)

count_arr = [0] * (person_cnt + 1)

def bfs(graph, count_arr, start_vertex, end_vertex):
    queue = deque()
    queue.append(start_vertex)

    while queue:
        vertex = queue.popleft()
        
        # 찾으면 촌수 반환
        if vertex == end_vertex:
            return count_arr[vertex]

        for node in graph[vertex]:
            if count_arr[node] == 0:  # 아직 방문하지 않았으면
                count_arr[node] = count_arr[vertex] + 1
                queue.append(node)
    return -1  # 촌수관계 X

print(bfs(adjacency_list, count_arr, a, b))