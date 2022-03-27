// 2022.03.27
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1546

let n = Double(readLine()!)!

var arr = readLine()!.split{ $0 == " " }.map{ Double(String($0))! }

print(arr.map{ $0 / arr.max()! * 100 }.reduce(0, +) / n)