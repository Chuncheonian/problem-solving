// 2022.04.14
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2914

let i = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
print(i[0] * (i[1] - 1) + 1)