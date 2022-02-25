# 2022.02.25
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/14620

N = input()

mid = len(N) // 2

left_count = 0
right_count = 0

for i in range(mid):
    left_count += int(N[i])

for i in range(mid, len(N)):
    right_count += int(N[i])

if left_count == right_count:
    print("LUCKY")
else:
    print("READY")