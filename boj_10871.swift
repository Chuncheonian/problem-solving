// 2022.03.04
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10871

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = input[1]

print(readLine()!
  .split(separator: " ")
  .map { Int($0)! }
  .filter { $0 < x }
  .map { "\($0)"}
  .joined(separator: " "))