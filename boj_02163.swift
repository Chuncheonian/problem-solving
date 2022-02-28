// 2022.02.28
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2163

print(readLine()!.split(separator: " ").map{ Int($0)! }.reduce(1,  *) - 1)