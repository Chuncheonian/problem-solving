# 2022.05.24
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://programmers.co.kr/learn/courses/30/lessons/12906

def solution(arr):
    answer = [num for i, num in enumerate(arr) if arr[i] != arr[i-1] or i==0]
    return answer


# Testcase
print(solution([1,1,3,3,0,1,1]))  # [1,3,0,1]
print(solution([4,4,4,3,3]))  # [4,3]