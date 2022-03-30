# 2022.03.30
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/14426

from sys import stdin

n_cnt, m_cnt = map(int, stdin.readline().split())
n_arr = [stdin.readline().strip() for _ in range(n_cnt)]
result = 0

for _ in range(m_cnt):
    s = stdin.readline().strip()
    for n in n_arr:
        if s == n[:len(s)]:
            result += 1
            break

print(result)