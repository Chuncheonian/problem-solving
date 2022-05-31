# 2021.04.09
# Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
# https://leetcode.com/problems/fibonacci-number/

def fib(n: int) -> int:
    x, y = 0, 1
    
    for _ in range(n):
        x, y = y, x + y
    
    return x

# Testcase
print(fib(5))