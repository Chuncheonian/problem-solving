# 2022.03.16
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://programmers.co.kr/learn/courses/30/lessons/43162

from collections import deque

def solution(n, computers):
    answer = 0
    visited = [0] * n
    
    for i in range(n):
        if visited[i] == 0:
            bfs(n, computers, visited, i)
            answer += 1

    return answer

def bfs(n, matrix, visited, start):
    visited[start] = 1
    queue = deque()
    queue.append(start)

    while queue:
        vertex = queue.popleft()

        for next in range(n):
            if vertex == next:
                continue
            if matrix[vertex][next] == 1 and visited[next] == 0:
                visited[next] = 1
                queue.append(next)

# Testcase
# print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
# print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))