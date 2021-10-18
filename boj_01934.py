# 2021.10.18
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1934

n = int(input())

def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b,a%b)

for _ in range(n):
    a, b = map(int, input().split())
    g = gcd(a,b)
    print(int(g * (a / g) * (b / g)))