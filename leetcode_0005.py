# 2021.03.22
# Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
# https://leetcode.com/problems/longest-palindromic-substring/

def longestPalindrome(s: str) -> str:   
    # 예외 처리
    if len(s) < 2 or s == s[::-1]: # s == s[::-1]를 빼면 문자열 전체가 팰린드롬일 경우 탐색속도가 느려짐.
        return s

    left, length = 0, 0
    
    for right in range(len(s)):
        if s[right-length: right+1] == s[right-length : right+1][::-1]:
            left, length = right-length, length+1
        elif right-length > 0 and s[right-length-1 : right+1] == s[right-length-1 : right+1][::-1]:
            left, length = right-length-1, length+2
    return s[left : left+length]

# Testcase
print(longestPalindrome('babad'))