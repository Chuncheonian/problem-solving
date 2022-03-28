// 2022.03.28
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1712

let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let (a, b, c) = (n[0], n[1], n[2])

print(b >= c ? -1 : (a / (c - b) + 1))