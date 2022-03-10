# 2022.03.11
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/11727

n = int(input())

dp = [0, 1, 3]  # dp[0]: Trash Value

if n > 2:
    for i in range(3, n + 1):
        dp.append((dp[i-1] + dp[i-2] * 2) % 10_007)  # 점화식
print(dp[n])