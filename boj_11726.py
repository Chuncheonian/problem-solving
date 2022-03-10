# 2022.03.11
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/11726

from collections import defaultdict

def tabulation(n: int) -> int:
    dp = defaultdict(int)
    dp[1] = 1
    dp[2] = 2

    if n <= 2:
        return dp[n]

    for i in range(3, n + 1):
        dp[i] = (dp[i-1] + dp[i-2]) % 10_007  # 점화식

    return dp[n]

n = int(input())
print(tabulation(n))