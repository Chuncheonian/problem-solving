# 2022.03.01
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/9095

from collections import defaultdict

cnt = int(input())
dp = defaultdict(int)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for _ in range(cnt):
    n = int(input())
    if n > 3:
        for i in range(4, n+1):
            dp[i] = dp[i-1] + dp[i-2] + dp[i-3]  # 점화식
    print(dp[n])