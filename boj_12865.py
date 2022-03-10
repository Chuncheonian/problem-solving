# 2022.03.10
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/12865

n, k = map(int, input().split())
cargo = []
for _ in range(n):
    w, v = map(int, input().split())
    cargo.append((w, v))

dp = [[0] * (k+1) for _ in range(n+1)]

for i in range(1, n+1):
    for j in range(1, k+1):
        if cargo[i-1][0] <= j:
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-cargo[i-1][0]] + cargo[i-1][1])  # 점화식
        else:  # 현재 선택한 무게가 전체 무게보다 무거우면 선택 X
            dp[i][j] = dp[i-1][j]

print(dp[-1][-1])