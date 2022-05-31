# 2021.03.18
# Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
# https://leetcode.com/problems/valid-palindrome/

def isPalindrome(s: str) -> bool:
    strs = []

    for char in s:
        if char.isalnum(): # 영문자, 숫자 여부를 판별하는 Method
            strs.append(char.lower()) # 소문자로 변경
  
    return strs == strs[::-1] # 팰린드롬 여부 판별

# Testcase
print(isPalindrome("A man a plan, a canal: Panama"))