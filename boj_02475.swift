// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2475

print(readLine()!.split(separator: " ").map{ Int($0)! }.map{ $0 * $0 }.reduce(0, +) % 10)