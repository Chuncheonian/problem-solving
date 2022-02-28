// 2022.03.01
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2439

let n: Int = Int(readLine()!)!

for i in 1...n {
  for _ in stride(from: n, to: i, by: -1) {
    print(" ", terminator: "")
  }

  for _ in stride(from: 0, to: i, by: 1) {
    print("*", terminator: "")
  }
  print()
}