// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11720

let _ = Int(String(readLine()!))!

print(Array(readLine()!).map{ Int(String($0))! }.reduce(0, +))