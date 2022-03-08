// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1008

print(1 / readLine()!.split(separator: " ").map{ Double(String($0))! }.reduce(1){ $1 / $0 })