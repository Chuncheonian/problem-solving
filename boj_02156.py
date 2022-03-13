# 2022.03.14
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2156

from collections import defaultdict

n = int(input())

wines = [0]
for _ in range(n):
    wines.append(int(input()))

dp = defaultdict(int)
dp[1] = wines[1]

if n > 1:
    dp[2] = dp[1] + wines[2]

if n > 2:
    for i in range(3, n+1):
        dp[i] = max(dp[i-1], dp[i-2] + wines[i], dp[i-3] + wines[i-1] + wines[i])  # 점화식

print(dp[n])