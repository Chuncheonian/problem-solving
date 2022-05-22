// 2022.05.23
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2845

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }.reduce(1, *)

print(readLine()!.split{ $0 == " " }.map { String(Int($0)! - n) }.joined(separator: " "))