// 2022.05.17
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/16430

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

print(n[1]-n[0], n[1])