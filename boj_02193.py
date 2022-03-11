# 2022.03.11
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2193

from collections import defaultdict

n = int(input())

dp = defaultdict(int)
dp[1] = 1
dp[2] = 1

if n > 2:
    for i in range(3, n+1):
        dp[i] = dp[i - 1] + dp[i - 2]  # 점화식

print(dp[n])