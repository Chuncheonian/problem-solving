// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2752

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.sorted()
print(n[0], n[1], n[2])