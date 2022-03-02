// 2022.03.02
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2884

let input = readLine()!.split(separator: " ").map { Int($0)! }
var h = input[0]
var m = input[1]

if m < 45 {
  if h == 0 {
    h = 23
  } else {
    h -= 1
  }
  m += 15
  print(h, m)
} else {
  m -= 45
  print(h, m)
}