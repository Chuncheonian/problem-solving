// 2022.03.15
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1001

print(readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, { -$0 - $1 }))