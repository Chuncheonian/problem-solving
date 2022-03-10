# 2022.03.10
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/9461

t = int(input())

def tabulation(n):
    dp = [0, 1, 1, 1, 2, 2]  # dp[0] => trash value

    if n <= 5:
        return dp[n]

    for i in range(6, n + 2):
        dp.append(dp[i - 5] + dp[i - 1])  # 점화식

    return dp[n]

for _ in range(t):
    n = int(input())
    print(tabulation(n))