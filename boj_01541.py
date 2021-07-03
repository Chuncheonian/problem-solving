# 2021.07.03
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/1541

input_value = input().split('-')
result = 0

for i in map(int, input_value[0].split('+')):
    result += i

for i in input_value[1:]:
    result -= sum(map(int, i.split('+')))

print(result)