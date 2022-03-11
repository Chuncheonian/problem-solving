# 2022.03.11
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/11052

from collections import defaultdict

n = int(input())
pack = list(map(int, input().split()))
pack.insert(0, 0)  # pack[0]: trash value

dp = defaultdict(int)

for i in range(1, n+1):

    for k in range(1, i+1):
        dp[i] = max(dp[i], pack[k] + dp[i - k])  # 점화식

print(dp[n])