# 2022.03.14
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2225

n, k = map(int, input().split())

dp = [[1] * n for _ in range(k)]

for i in range(1, k):
    dp[i][0] = i+1
    for j in range(1, n):
        dp[i][j] = (dp[i][j-1] + dp[i-1][j]) % 1_000_000_000

print(dp[-1][-1])