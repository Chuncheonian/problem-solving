// 2022.03.08
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10952

while true {
  let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
  if input == [0, 0] {
    break
  }
  print(input.reduce(0, +))
}

