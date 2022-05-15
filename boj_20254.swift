// 2022.05.16
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/20254

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

print(56 * n[0] + 24 * n[1] + 14 * n[2] + 6 * n[3])