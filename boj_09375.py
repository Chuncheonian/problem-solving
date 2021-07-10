# 2021.07.10
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/9375

testcase_cnt = int(input())

result_list = []
for _ in range(testcase_cnt):
    n = int(input())
    
    kind_dict = dict()
    for _ in range(n):
        name, kind = map(str, input().split())
        if kind in kind_dict.keys():
            kind_dict[kind] += 1
        else:
            kind_dict[kind] = 1
    
    kind_cnt_list = list(kind_dict.values())

    result = 1
    for i in kind_cnt_list:
        result *= (i+1)
    
    result_list.append(result-1)

for result in result_list:
    print(result)