# 2021.03.21
# Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
# https://leetcode.com/problems/group-anagrams/

import collections

def groupAnagrams(strs: list[str]) -> list[list[str]]:
    anagrams = collections.defaultdict(list)

    for word in strs:
        anagrams[''.join(sorted(word))].append(word)

    return list(anagrams.values())

# Testcase
print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))