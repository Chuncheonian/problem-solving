# 2022.03.14
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2133

from collections import defaultdict

n = int(input())
dp = defaultdict(int)

if n > 1:
    dp[2] = 3

for i in range(4, n+1, 2):
    dp[i] = dp[i-2] * 3 + 2
    for j in range(2, i-2, 2):
        dp[i] += dp[j] * 2

print(dp[n])