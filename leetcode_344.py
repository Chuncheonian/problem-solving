# 2021.03.19
# Dongyoung Kwon (ehddud2468@gmail.com)
# https://leetcode.com/problems/reverse-string/

def reverseString(s: list[str]) -> None:
    left, right = 0, len(s) -1

    while left < right:
        s[left], s[right] = s[right], s[left]
        left += 1
        right -= 1