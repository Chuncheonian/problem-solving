# 2022.05.30
# Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
# https://www.acmicpc.net/problem/11478

s = str(input())
set = set()

for i in range(len(s)):
    for j in range(i, len(s)):
        set.add(s[i:j+1])

print(len(set))