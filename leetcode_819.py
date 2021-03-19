# 2021.03.19
# Dongyoung Kwon (ehddud2468@gmail.com)
# https://leetcode.com/problems/most-common-word/
import re
import collections

def mostCommonWord(paragraph: str, banned: list[str]) -> str:
    words = [word for word in re.sub(r'[^\w]', ' ', paragraph).lower().split()
                if word not in banned]
    
    counts = collections.Counter(words) # elem 이름 및 개수를 dict로 리턴

    return counts.most_common(1)[0][0] # 가장 자주 등장하는 단어 리턴

print(mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))