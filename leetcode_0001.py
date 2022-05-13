# 2021.03.29
# Dongyoung Kwon (ehddud2468@gmail.com)
# https://leetcode.com/problems/two-sum/

def twoSum(nums: list[int], target: int) -> list[int]:
    nums_map = {}

    for i, num in enumerate(nums):
        if target-num in nums_map:
            return [nums_map[target - num], i]
        nums_map[num] = i


# print(twoSum([2,7,11,15], 9))