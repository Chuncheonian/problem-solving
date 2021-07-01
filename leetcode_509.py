# 2021.04.09
# Dongyoung Kwon (ehddud2468@gmail.com)
# https://leetcode.com/problems/fibonacci-number/

def fib(n: int) -> int:
    x, y = 0, 1
    
    for _ in range(n):
        x, y = y, x + y
    
    return x

# print(fib(5))