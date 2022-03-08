# 2022.03.08
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/5585

price = int(input())

rest = 1000 - price
count = 0

money_types = [500, 100, 50, 10, 5, 1]

for money in money_types:
    count += rest // money
    rest %= money

print(count)