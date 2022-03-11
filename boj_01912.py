# 2022.03.12
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1912

n = int(input())
seq = list(map(int, input().split()))

dp = [seq[0]]

for i in range(1, n):
    if dp[i-1] > 0:
        dp.append(seq[i] + dp[i-1])
    else:
        dp.append(seq[i])

print(max(dp))