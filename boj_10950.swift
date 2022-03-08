// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10950

let t = Int(readLine()!)!

for _ in 1...t {
  print(readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +))
}