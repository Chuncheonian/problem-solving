# 2021.10.17
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/2609

A, B = map(int, input().split())
r = min(A, B) // max(A, B)

def gcd(x, y):
    while y:
        x, y = y, x % y
    return x

gcd_result = gcd(min(A, B), max(A, B))

print(gcd_result) 
print(A * B // gcd_result)