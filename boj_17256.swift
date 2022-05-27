// 2022.05.28
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/17256

let a = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let c = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
print(c[0] - a[2], c[1] / a[1], c[2] - a[0])