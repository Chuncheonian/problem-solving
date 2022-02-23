# 2022.02.22
# Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
# https://www.acmicpc.net/problem/21608

import sys
from collections import defaultdict

input = sys.stdin.readline

N = int(input())
student_dict = defaultdict(list)
matrix = [[0] * N for _ in range(N)]
dr = [0, -1, 0, 1]
dc = [1, 0, -1, 0]

# 학생 배치 정하기
for _ in range(N**2):
    like_arr = list(map(int, input().split()))

    student_dict[like_arr[0]] = like_arr[1:]
    tmp_result_row = 0
    tmp_result_col = 0
    max_empty = -1
    max_like = -1
    for row in range(N):
        for col in range(N):
            if matrix[row][col] == 0:
                empty_cnt = 0
                like_cnt = 0
                for i in range(4):
                    n_row = row + dr[i]
                    n_col = col + dc[i]

                    if 0 <= n_row < N and 0 <= n_col < N:
                        if matrix[n_row][n_col] in student_dict[like_arr[0]]:
                            like_cnt += 1
                        if matrix[n_row][n_col] == 0:
                            empty_cnt += 1
            
                # 조건 1 or 조건 2
                # 조건 1, 2 충족되면 자동적으로 조건 3 적용
                if max_like < like_cnt or (max_like == like_cnt and max_empty < empty_cnt):
                    tmp_result_row = row
                    tmp_result_col = col
                    max_like = like_cnt
                    max_empty = empty_cnt

    matrix[tmp_result_row][tmp_result_col] = like_arr[0]

# 만족도 조사
result = 0

for row in range(N):
    for col in range(N):
        like_cnt = 0
        like_arr = student_dict[matrix[row][col]]
        for k in range(4):
            n_row = row + dr[k]
            n_col = col + dc[k]

            if 0 <= n_row < N and 0 <= n_col < N:
                if matrix[n_row][n_col] in like_arr:
                    like_cnt += 1
        if like_cnt == 1:
            result += 1
        elif like_cnt == 2:
            result += 10
        elif like_cnt == 3:
            result += 100
        elif like_cnt == 4:
            result += 1000

print(result)