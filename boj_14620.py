# 2022.02.28
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/14620

n = int(input())

matrix = [list(map(int, input().split())) for _ in range(n)]
visited = [[0]*n for _ in range(n)]
dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]

result = 99999

# 이미 심은 꽃길이 상하좌우에 있는지 
def isPossible(x: int, y: int) -> bool:
    if visited[x][y] == 1:
        return False
    for i in range(4):
        nx = x + dr[i]
        ny = y + dc[i]
        if visited[nx][ny] == 1:
            return False
    return True

def dfs(sum: int, cnt: int):
    global result, visited
    
    if cnt == 3:
        result = min(result, sum)
        return 

    # 화단 가장자리 제외
    for x in range(1, n - 1):
        for y in range(1, n - 1):

            if isPossible(x, y):
                
                # 꽃 비용 계산 및 방문 처리
                visited[x][y] = 1
                cost = matrix[x][y]
                for i in range(4):
                    nx = x + dr[i]
                    ny = y + dc[i]
                    visited[nx][ny] = 1
                    cost += matrix[nx][ny]
                dfs(sum + cost, cnt + 1)

                # 방문 처리 원상 복구
                visited[x][y] = 0
                for i in range(4):
                    nx = x + dr[i]
                    ny = y + dc[i]
                    visited[nx][ny] = 0

dfs(0, 0)
print(result)